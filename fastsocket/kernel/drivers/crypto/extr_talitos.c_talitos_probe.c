
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct talitos_request {int dummy; } ;
struct talitos_private {scalar_t__ irq; unsigned int num_channels; unsigned int chfifo_len; unsigned int exec_units; unsigned int desc_types; int fifo_len; int alg_list; TYPE_1__* chan; int features; int reg; int done_task; struct of_device* ofdev; } ;
struct TYPE_8__ {int cra_driver_name; } ;
struct talitos_crypto_alg {TYPE_4__ crypto_alg; int entry; } ;
struct talitos_channel {int dummy; } ;
struct of_device_id {int dummy; } ;
struct device {int dummy; } ;
struct of_device {struct device_node* node; struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int desc_hdr_template; } ;
struct TYPE_6__ {int submit_count; void* fifo; int tail_lock; int head_lock; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int DESC_HDR_SEL0_RNG ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct talitos_crypto_alg*) ;
 scalar_t__ NO_IRQ ;
 int PTR_ERR (struct talitos_crypto_alg*) ;
 int TALITOS_FTR_HW_AUTH_CHECK ;
 int TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT ;
 int atomic_set (int *,int) ;
 int crypto_register_alg (TYPE_4__*) ;
 int dev_driver_string (struct device*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct talitos_private*) ;
 int dma_set_mask (struct device*,int ) ;
 TYPE_2__* driver_algs ;
 scalar_t__ hw_supports (struct device*,int ) ;
 int init_device (struct device*) ;
 int irq_dispose_mapping (int) ;
 scalar_t__ irq_of_parse_and_map (struct device_node*,int ) ;
 int is_power_of_2 (unsigned int) ;
 int kfree (struct talitos_crypto_alg*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;
 int of_iomap (struct device_node*,int ) ;
 int request_irq (scalar_t__,int ,int ,int ,struct device*) ;
 int roundup_pow_of_two (unsigned int) ;
 int spin_lock_init (int *) ;
 struct talitos_crypto_alg* talitos_alg_alloc (struct device*,TYPE_2__*) ;
 int talitos_done ;
 int talitos_interrupt ;
 int talitos_register_rng (struct device*) ;
 int talitos_remove (struct of_device*) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int talitos_probe(struct of_device *ofdev,
    const struct of_device_id *match)
{
 struct device *dev = &ofdev->dev;
 struct device_node *np = ofdev->node;
 struct talitos_private *priv;
 const unsigned int *prop;
 int i, err;

 priv = kzalloc(sizeof(struct talitos_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 dev_set_drvdata(dev, priv);

 priv->ofdev = ofdev;

 tasklet_init(&priv->done_task, talitos_done, (unsigned long)dev);

 INIT_LIST_HEAD(&priv->alg_list);

 priv->irq = irq_of_parse_and_map(np, 0);

 if (priv->irq == NO_IRQ) {
  dev_err(dev, "failed to map irq\n");
  err = -EINVAL;
  goto err_out;
 }


 err = request_irq(priv->irq, talitos_interrupt, 0,
     dev_driver_string(dev), dev);
 if (err) {
  dev_err(dev, "failed to request irq %d\n", priv->irq);
  irq_dispose_mapping(priv->irq);
  priv->irq = NO_IRQ;
  goto err_out;
 }

 priv->reg = of_iomap(np, 0);
 if (!priv->reg) {
  dev_err(dev, "failed to of_iomap\n");
  err = -ENOMEM;
  goto err_out;
 }


 prop = of_get_property(np, "fsl,num-channels", ((void*)0));
 if (prop)
  priv->num_channels = *prop;

 prop = of_get_property(np, "fsl,channel-fifo-len", ((void*)0));
 if (prop)
  priv->chfifo_len = *prop;

 prop = of_get_property(np, "fsl,exec-units-mask", ((void*)0));
 if (prop)
  priv->exec_units = *prop;

 prop = of_get_property(np, "fsl,descriptor-types-mask", ((void*)0));
 if (prop)
  priv->desc_types = *prop;

 if (!is_power_of_2(priv->num_channels) || !priv->chfifo_len ||
     !priv->exec_units || !priv->desc_types) {
  dev_err(dev, "invalid property data in device tree node\n");
  err = -EINVAL;
  goto err_out;
 }

 if (of_device_is_compatible(np, "fsl,sec3.0"))
  priv->features |= TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT;

 if (of_device_is_compatible(np, "fsl,sec2.1"))
  priv->features |= TALITOS_FTR_HW_AUTH_CHECK;

 priv->chan = kzalloc(sizeof(struct talitos_channel) *
        priv->num_channels, GFP_KERNEL);
 if (!priv->chan) {
  dev_err(dev, "failed to allocate channel management space\n");
  err = -ENOMEM;
  goto err_out;
 }

 for (i = 0; i < priv->num_channels; i++) {
  spin_lock_init(&priv->chan[i].head_lock);
  spin_lock_init(&priv->chan[i].tail_lock);
 }

 priv->fifo_len = roundup_pow_of_two(priv->chfifo_len);

 for (i = 0; i < priv->num_channels; i++) {
  priv->chan[i].fifo = kzalloc(sizeof(struct talitos_request) *
          priv->fifo_len, GFP_KERNEL);
  if (!priv->chan[i].fifo) {
   dev_err(dev, "failed to allocate request fifo %d\n", i);
   err = -ENOMEM;
   goto err_out;
  }
 }

 for (i = 0; i < priv->num_channels; i++)
  atomic_set(&priv->chan[i].submit_count,
      -(priv->chfifo_len - 1));

 dma_set_mask(dev, DMA_BIT_MASK(36));


 err = init_device(dev);
 if (err) {
  dev_err(dev, "failed to initialize device\n");
  goto err_out;
 }


 if (hw_supports(dev, DESC_HDR_SEL0_RNG)) {
  err = talitos_register_rng(dev);
  if (err) {
   dev_err(dev, "failed to register hwrng: %d\n", err);
   goto err_out;
  } else
   dev_info(dev, "hwrng\n");
 }


 for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
  if (hw_supports(dev, driver_algs[i].desc_hdr_template)) {
   struct talitos_crypto_alg *t_alg;

   t_alg = talitos_alg_alloc(dev, &driver_algs[i]);
   if (IS_ERR(t_alg)) {
    err = PTR_ERR(t_alg);
    goto err_out;
   }

   err = crypto_register_alg(&t_alg->crypto_alg);
   if (err) {
    dev_err(dev, "%s alg registration failed\n",
     t_alg->crypto_alg.cra_driver_name);
    kfree(t_alg);
   } else {
    list_add_tail(&t_alg->entry, &priv->alg_list);
    dev_info(dev, "%s\n",
      t_alg->crypto_alg.cra_driver_name);
   }
  }
 }

 return 0;

err_out:
 talitos_remove(ofdev);

 return err;
}
