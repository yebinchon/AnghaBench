#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct talitos_request {int dummy; } ;
struct talitos_private {scalar_t__ irq; unsigned int num_channels; unsigned int chfifo_len; unsigned int exec_units; unsigned int desc_types; int fifo_len; int /*<<< orphan*/  alg_list; TYPE_1__* chan; int /*<<< orphan*/  features; int /*<<< orphan*/  reg; int /*<<< orphan*/  done_task; struct of_device* ofdev; } ;
struct TYPE_8__ {int cra_driver_name; } ;
struct talitos_crypto_alg {TYPE_4__ crypto_alg; int /*<<< orphan*/  entry; } ;
struct talitos_channel {int dummy; } ;
struct of_device_id {int dummy; } ;
struct device {int dummy; } ;
struct of_device {struct device_node* node; struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  desc_hdr_template; } ;
struct TYPE_6__ {int /*<<< orphan*/  submit_count; void* fifo; int /*<<< orphan*/  tail_lock; int /*<<< orphan*/  head_lock; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DESC_HDR_SEL0_RNG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct talitos_crypto_alg*) ; 
 scalar_t__ NO_IRQ ; 
 int FUNC4 (struct talitos_crypto_alg*) ; 
 int /*<<< orphan*/  TALITOS_FTR_HW_AUTH_CHECK ; 
 int /*<<< orphan*/  TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct talitos_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* driver_algs ; 
 scalar_t__ FUNC12 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct talitos_crypto_alg*) ; 
 void* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct device_node*,char*) ; 
 unsigned int* FUNC21 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC24 (unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 struct talitos_crypto_alg* FUNC26 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  talitos_done ; 
 int /*<<< orphan*/  talitos_interrupt ; 
 int FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct of_device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC30(struct of_device *ofdev,
			 const struct of_device_id *match)
{
	struct device *dev = &ofdev->dev;
	struct device_node *np = ofdev->node;
	struct talitos_private *priv;
	const unsigned int *prop;
	int i, err;

	priv = FUNC18(sizeof(struct talitos_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC10(dev, priv);

	priv->ofdev = ofdev;

	FUNC29(&priv->done_task, talitos_done, (unsigned long)dev);

	FUNC2(&priv->alg_list);

	priv->irq = FUNC15(np, 0);

	if (priv->irq == NO_IRQ) {
		FUNC8(dev, "failed to map irq\n");
		err = -EINVAL;
		goto err_out;
	}

	/* get the irq line */
	err = FUNC23(priv->irq, talitos_interrupt, 0,
			  FUNC7(dev), dev);
	if (err) {
		FUNC8(dev, "failed to request irq %d\n", priv->irq);
		FUNC14(priv->irq);
		priv->irq = NO_IRQ;
		goto err_out;
	}

	priv->reg = FUNC22(np, 0);
	if (!priv->reg) {
		FUNC8(dev, "failed to of_iomap\n");
		err = -ENOMEM;
		goto err_out;
	}

	/* get SEC version capabilities from device tree */
	prop = FUNC21(np, "fsl,num-channels", NULL);
	if (prop)
		priv->num_channels = *prop;

	prop = FUNC21(np, "fsl,channel-fifo-len", NULL);
	if (prop)
		priv->chfifo_len = *prop;

	prop = FUNC21(np, "fsl,exec-units-mask", NULL);
	if (prop)
		priv->exec_units = *prop;

	prop = FUNC21(np, "fsl,descriptor-types-mask", NULL);
	if (prop)
		priv->desc_types = *prop;

	if (!FUNC16(priv->num_channels) || !priv->chfifo_len ||
	    !priv->exec_units || !priv->desc_types) {
		FUNC8(dev, "invalid property data in device tree node\n");
		err = -EINVAL;
		goto err_out;
	}

	if (FUNC20(np, "fsl,sec3.0"))
		priv->features |= TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT;

	if (FUNC20(np, "fsl,sec2.1"))
		priv->features |= TALITOS_FTR_HW_AUTH_CHECK;

	priv->chan = FUNC18(sizeof(struct talitos_channel) *
			     priv->num_channels, GFP_KERNEL);
	if (!priv->chan) {
		FUNC8(dev, "failed to allocate channel management space\n");
		err = -ENOMEM;
		goto err_out;
	}

	for (i = 0; i < priv->num_channels; i++) {
		FUNC25(&priv->chan[i].head_lock);
		FUNC25(&priv->chan[i].tail_lock);
	}

	priv->fifo_len = FUNC24(priv->chfifo_len);

	for (i = 0; i < priv->num_channels; i++) {
		priv->chan[i].fifo = FUNC18(sizeof(struct talitos_request) *
					     priv->fifo_len, GFP_KERNEL);
		if (!priv->chan[i].fifo) {
			FUNC8(dev, "failed to allocate request fifo %d\n", i);
			err = -ENOMEM;
			goto err_out;
		}
	}

	for (i = 0; i < priv->num_channels; i++)
		FUNC5(&priv->chan[i].submit_count,
			   -(priv->chfifo_len - 1));

	FUNC11(dev, FUNC1(36));

	/* reset and initialize the h/w */
	err = FUNC13(dev);
	if (err) {
		FUNC8(dev, "failed to initialize device\n");
		goto err_out;
	}

	/* register the RNG, if available */
	if (FUNC12(dev, DESC_HDR_SEL0_RNG)) {
		err = FUNC27(dev);
		if (err) {
			FUNC8(dev, "failed to register hwrng: %d\n", err);
			goto err_out;
		} else
			FUNC9(dev, "hwrng\n");
	}

	/* register crypto algorithms the device supports */
	for (i = 0; i < FUNC0(driver_algs); i++) {
		if (FUNC12(dev, driver_algs[i].desc_hdr_template)) {
			struct talitos_crypto_alg *t_alg;

			t_alg = FUNC26(dev, &driver_algs[i]);
			if (FUNC3(t_alg)) {
				err = FUNC4(t_alg);
				goto err_out;
			}

			err = FUNC6(&t_alg->crypto_alg);
			if (err) {
				FUNC8(dev, "%s alg registration failed\n",
					t_alg->crypto_alg.cra_driver_name);
				FUNC17(t_alg);
			} else {
				FUNC19(&t_alg->entry, &priv->alg_list);
				FUNC9(dev, "%s\n",
					 t_alg->crypto_alg.cra_driver_name);
			}
		}
	}

	return 0;

err_out:
	FUNC28(ofdev);

	return err;
}