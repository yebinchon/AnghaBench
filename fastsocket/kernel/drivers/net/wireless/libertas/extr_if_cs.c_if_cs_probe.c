
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_16__ {int TupleDataMax; int DesiredTuple; scalar_t__ TupleOffset; int * TupleData; scalar_t__ Attributes; } ;
typedef TYPE_3__ tuple_t ;
struct TYPE_20__ {int IRQInfo1; int AssignedIRQ; int * Handler; int Attributes; } ;
struct TYPE_21__ {scalar_t__ NumPorts1; scalar_t__ BasePort1; int Attributes1; } ;
struct TYPE_22__ {int Attributes; int ConfigIndex; int IntType; } ;
struct pcmcia_device {TYPE_7__ irq; int dev; TYPE_8__ io; TYPE_9__ conf; struct if_cs_card* priv; } ;
struct lbs_private {int fw_ready; int hw_host_to_card; struct if_cs_card* card; } ;
struct if_cs_card {int align_regs; int iobase; struct lbs_private* priv; struct pcmcia_device* p_dev; } ;
struct TYPE_17__ {int nwin; TYPE_2__* win; } ;
typedef TYPE_4__ cistpl_io_t ;
struct TYPE_14__ {scalar_t__ IRQInfo1; } ;
struct TYPE_18__ {TYPE_4__ io; TYPE_1__ irq; int index; } ;
typedef TYPE_5__ cistpl_cftable_entry_t ;
struct TYPE_19__ {TYPE_5__ cftable_entry; } ;
typedef TYPE_6__ cisparse_t ;
typedef int buf ;
struct TYPE_15__ {scalar_t__ len; scalar_t__ base; } ;


 int CISTPL_CFTABLE_ENTRY ;
 int CONF_ENABLE_IRQ ;
 int DRV_NAME ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IF_CS_BIT_MASK ;
 int IF_CS_CARD_INT_CAUSE ;
 unsigned int IF_CS_CF8305_B1_REV ;
 unsigned int IF_CS_CF8381_B3_REV ;
 unsigned int IF_CS_CF8385_B1_REV ;
 int IF_CS_PRODUCT_ID ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int IRQF_SHARED ;
 int IRQ_INFO2_VALID ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int LBS_DEB_CS ;
 int if_cs_enable_ints (struct if_cs_card*) ;
 int if_cs_host_to_card ;
 scalar_t__ if_cs_hw_is_cf8305 (struct pcmcia_device*) ;
 scalar_t__ if_cs_hw_is_cf8381 (struct pcmcia_device*) ;
 scalar_t__ if_cs_hw_is_cf8385 (struct pcmcia_device*) ;
 int if_cs_interrupt ;
 int if_cs_prog_helper (struct if_cs_card*) ;
 int if_cs_prog_real (struct if_cs_card*) ;
 unsigned int if_cs_read8 (struct if_cs_card*,int ) ;
 int if_cs_write16 (struct if_cs_card*,int ,int ) ;
 int ioport_map (scalar_t__,scalar_t__) ;
 int ioport_unmap (int ) ;
 struct if_cs_card* kzalloc (int,int ) ;
 struct lbs_private* lbs_add_card (struct if_cs_card*,int *) ;
 int lbs_deb_cs (char*,int ,scalar_t__,scalar_t__) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_pr_err (char*) ;
 int lbs_remove_card (struct lbs_private*) ;
 scalar_t__ lbs_start_card (struct lbs_private*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int pcmcia_get_first_tuple (struct pcmcia_device*,TYPE_3__*) ;
 int pcmcia_get_tuple_data (struct pcmcia_device*,TYPE_3__*) ;
 int pcmcia_parse_tuple (TYPE_3__*,TYPE_6__*) ;
 int pcmcia_request_configuration (struct pcmcia_device*,TYPE_9__*) ;
 int pcmcia_request_io (struct pcmcia_device*,TYPE_8__*) ;
 int pcmcia_request_irq (struct pcmcia_device*,TYPE_7__*) ;
 int request_irq (int ,int ,int ,int ,struct if_cs_card*) ;

__attribute__((used)) static int if_cs_probe(struct pcmcia_device *p_dev)
{
 int ret = -ENOMEM;
 unsigned int prod_id;
 struct lbs_private *priv;
 struct if_cs_card *card;

 tuple_t tuple;
 cisparse_t parse;
 cistpl_cftable_entry_t *cfg = &parse.cftable_entry;
 cistpl_io_t *io = &cfg->io;
 u_char buf[64];

 lbs_deb_enter(LBS_DEB_CS);

 card = kzalloc(sizeof(struct if_cs_card), GFP_KERNEL);
 if (!card) {
  lbs_pr_err("error in kzalloc\n");
  goto out;
 }
 card->p_dev = p_dev;
 p_dev->priv = card;

 p_dev->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
 p_dev->irq.Handler = ((void*)0);
 p_dev->irq.IRQInfo1 = IRQ_INFO2_VALID | IRQ_LEVEL_ID;

 p_dev->conf.Attributes = 0;
 p_dev->conf.IntType = INT_MEMORY_AND_IO;

 tuple.Attributes = 0;
 tuple.TupleData = buf;
 tuple.TupleDataMax = sizeof(buf);
 tuple.TupleOffset = 0;

 tuple.DesiredTuple = CISTPL_CFTABLE_ENTRY;
 if ((ret = pcmcia_get_first_tuple(p_dev, &tuple)) != 0 ||
     (ret = pcmcia_get_tuple_data(p_dev, &tuple)) != 0 ||
     (ret = pcmcia_parse_tuple(&tuple, &parse)) != 0)
 {
  lbs_pr_err("error in pcmcia_get_first_tuple etc\n");
  goto out1;
 }

 p_dev->conf.ConfigIndex = cfg->index;


 if (cfg->irq.IRQInfo1) {
  p_dev->conf.Attributes |= CONF_ENABLE_IRQ;
 }


 if (cfg->io.nwin != 1) {
  lbs_pr_err("wrong CIS (check number of IO windows)\n");
  ret = -ENODEV;
  goto out1;
 }
 p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_AUTO;
 p_dev->io.BasePort1 = io->win[0].base;
 p_dev->io.NumPorts1 = io->win[0].len;


 ret = pcmcia_request_io(p_dev, &p_dev->io);
 if (ret) {
  lbs_pr_err("error in pcmcia_request_io\n");
  goto out1;
 }






 if (p_dev->conf.Attributes & CONF_ENABLE_IRQ) {
  ret = pcmcia_request_irq(p_dev, &p_dev->irq);
  if (ret) {
   lbs_pr_err("error in pcmcia_request_irq\n");
   goto out1;
  }
 }


 card->iobase = ioport_map(p_dev->io.BasePort1, p_dev->io.NumPorts1);
 if (!card->iobase) {
  lbs_pr_err("error in ioport_map\n");
  ret = -EIO;
  goto out1;
 }






 ret = pcmcia_request_configuration(p_dev, &p_dev->conf);
 if (ret) {
  lbs_pr_err("error in pcmcia_request_configuration\n");
  goto out2;
 }


 lbs_deb_cs("irq %d, io 0x%04x-0x%04x\n",
        p_dev->irq.AssignedIRQ, p_dev->io.BasePort1,
        p_dev->io.BasePort1 + p_dev->io.NumPorts1 - 1);





 card->align_regs = 0;


 prod_id = if_cs_read8(card, IF_CS_PRODUCT_ID);
 if (if_cs_hw_is_cf8305(p_dev)) {
  card->align_regs = 1;
  if (prod_id < IF_CS_CF8305_B1_REV) {
   lbs_pr_err("old chips like 8305 rev B3 "
    "aren't supported\n");
   ret = -ENODEV;
   goto out2;
  }
 }

 if (if_cs_hw_is_cf8381(p_dev) && prod_id < IF_CS_CF8381_B3_REV) {
  lbs_pr_err("old chips like 8381 rev B3 aren't supported\n");
  ret = -ENODEV;
  goto out2;
 }

 if (if_cs_hw_is_cf8385(p_dev) && prod_id < IF_CS_CF8385_B1_REV) {
  lbs_pr_err("old chips like 8385 rev B1 aren't supported\n");
  ret = -ENODEV;
  goto out2;
 }


 ret = if_cs_prog_helper(card);
 if (ret == 0 && !if_cs_hw_is_cf8305(p_dev))
  ret = if_cs_prog_real(card);
 if (ret)
  goto out2;


 priv = lbs_add_card(card, &p_dev->dev);
 if (!priv) {
  ret = -ENOMEM;
  goto out2;
 }


 card->priv = priv;
 priv->card = card;
 priv->hw_host_to_card = if_cs_host_to_card;
 priv->fw_ready = 1;


 ret = request_irq(p_dev->irq.AssignedIRQ, if_cs_interrupt,
  IRQF_SHARED, DRV_NAME, card);
 if (ret) {
  lbs_pr_err("error in request_irq\n");
  goto out3;
 }



 if_cs_write16(card, IF_CS_CARD_INT_CAUSE, IF_CS_BIT_MASK);
 if_cs_enable_ints(card);


 if (lbs_start_card(priv) != 0) {
  lbs_pr_err("could not activate card\n");
  goto out3;
 }

 ret = 0;
 goto out;

out3:
 lbs_remove_card(priv);
out2:
 ioport_unmap(card->iobase);
out1:
 pcmcia_disable_device(p_dev);
out:
 lbs_deb_leave_args(LBS_DEB_CS, "ret %d", ret);
 return ret;
}
