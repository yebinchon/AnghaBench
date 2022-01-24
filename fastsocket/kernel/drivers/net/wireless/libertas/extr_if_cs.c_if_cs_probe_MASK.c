#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_16__ {int TupleDataMax; int /*<<< orphan*/  DesiredTuple; scalar_t__ TupleOffset; int /*<<< orphan*/ * TupleData; scalar_t__ Attributes; } ;
typedef  TYPE_3__ tuple_t ;
struct TYPE_20__ {int IRQInfo1; int /*<<< orphan*/  AssignedIRQ; int /*<<< orphan*/ * Handler; int /*<<< orphan*/  Attributes; } ;
struct TYPE_21__ {scalar_t__ NumPorts1; scalar_t__ BasePort1; int /*<<< orphan*/  Attributes1; } ;
struct TYPE_22__ {int Attributes; int /*<<< orphan*/  ConfigIndex; int /*<<< orphan*/  IntType; } ;
struct pcmcia_device {TYPE_7__ irq; int /*<<< orphan*/  dev; TYPE_8__ io; TYPE_9__ conf; struct if_cs_card* priv; } ;
struct lbs_private {int fw_ready; int /*<<< orphan*/  hw_host_to_card; struct if_cs_card* card; } ;
struct if_cs_card {int align_regs; int /*<<< orphan*/  iobase; struct lbs_private* priv; struct pcmcia_device* p_dev; } ;
struct TYPE_17__ {int nwin; TYPE_2__* win; } ;
typedef  TYPE_4__ cistpl_io_t ;
struct TYPE_14__ {scalar_t__ IRQInfo1; } ;
struct TYPE_18__ {TYPE_4__ io; TYPE_1__ irq; int /*<<< orphan*/  index; } ;
typedef  TYPE_5__ cistpl_cftable_entry_t ;
struct TYPE_19__ {TYPE_5__ cftable_entry; } ;
typedef  TYPE_6__ cisparse_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_15__ {scalar_t__ len; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISTPL_CFTABLE_ENTRY ; 
 int CONF_ENABLE_IRQ ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IF_CS_BIT_MASK ; 
 int /*<<< orphan*/  IF_CS_CARD_INT_CAUSE ; 
 unsigned int IF_CS_CF8305_B1_REV ; 
 unsigned int IF_CS_CF8381_B3_REV ; 
 unsigned int IF_CS_CF8385_B1_REV ; 
 int /*<<< orphan*/  IF_CS_PRODUCT_ID ; 
 int /*<<< orphan*/  INT_MEMORY_AND_IO ; 
 int /*<<< orphan*/  IO_DATA_PATH_WIDTH_AUTO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int IRQ_INFO2_VALID ; 
 int IRQ_LEVEL_ID ; 
 int /*<<< orphan*/  IRQ_TYPE_DYNAMIC_SHARING ; 
 int /*<<< orphan*/  LBS_DEB_CS ; 
 int /*<<< orphan*/  FUNC0 (struct if_cs_card*) ; 
 int /*<<< orphan*/  if_cs_host_to_card ; 
 scalar_t__ FUNC1 (struct pcmcia_device*) ; 
 scalar_t__ FUNC2 (struct pcmcia_device*) ; 
 scalar_t__ FUNC3 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  if_cs_interrupt ; 
 int FUNC4 (struct if_cs_card*) ; 
 int FUNC5 (struct if_cs_card*) ; 
 unsigned int FUNC6 (struct if_cs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct if_cs_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct if_cs_card* FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct lbs_private* FUNC11 (struct if_cs_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct lbs_private*) ; 
 scalar_t__ FUNC17 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct pcmcia_device*) ; 
 int FUNC19 (struct pcmcia_device*,TYPE_3__*) ; 
 int FUNC20 (struct pcmcia_device*,TYPE_3__*) ; 
 int FUNC21 (TYPE_3__*,TYPE_6__*) ; 
 int FUNC22 (struct pcmcia_device*,TYPE_9__*) ; 
 int FUNC23 (struct pcmcia_device*,TYPE_8__*) ; 
 int FUNC24 (struct pcmcia_device*,TYPE_7__*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct if_cs_card*) ; 

__attribute__((used)) static int FUNC26(struct pcmcia_device *p_dev)
{
	int ret = -ENOMEM;
	unsigned int prod_id;
	struct lbs_private *priv;
	struct if_cs_card *card;
	/* CIS parsing */
	tuple_t tuple;
	cisparse_t parse;
	cistpl_cftable_entry_t *cfg = &parse.cftable_entry;
	cistpl_io_t *io = &cfg->io;
	u_char buf[64];

	FUNC13(LBS_DEB_CS);

	card = FUNC10(sizeof(struct if_cs_card), GFP_KERNEL);
	if (!card) {
		FUNC15("error in kzalloc\n");
		goto out;
	}
	card->p_dev = p_dev;
	p_dev->priv = card;

	p_dev->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
	p_dev->irq.Handler = NULL;
	p_dev->irq.IRQInfo1 = IRQ_INFO2_VALID | IRQ_LEVEL_ID;

	p_dev->conf.Attributes = 0;
	p_dev->conf.IntType = INT_MEMORY_AND_IO;

	tuple.Attributes = 0;
	tuple.TupleData = buf;
	tuple.TupleDataMax = sizeof(buf);
	tuple.TupleOffset = 0;

	tuple.DesiredTuple = CISTPL_CFTABLE_ENTRY;
	if ((ret = FUNC19(p_dev, &tuple)) != 0 ||
	    (ret = FUNC20(p_dev, &tuple)) != 0 ||
	    (ret = FUNC21(&tuple, &parse)) != 0)
	{
		FUNC15("error in pcmcia_get_first_tuple etc\n");
		goto out1;
	}

	p_dev->conf.ConfigIndex = cfg->index;

	/* Do we need to allocate an interrupt? */
	if (cfg->irq.IRQInfo1) {
		p_dev->conf.Attributes |= CONF_ENABLE_IRQ;
	}

	/* IO window settings */
	if (cfg->io.nwin != 1) {
		FUNC15("wrong CIS (check number of IO windows)\n");
		ret = -ENODEV;
		goto out1;
	}
	p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_AUTO;
	p_dev->io.BasePort1 = io->win[0].base;
	p_dev->io.NumPorts1 = io->win[0].len;

	/* This reserves IO space but doesn't actually enable it */
	ret = FUNC23(p_dev, &p_dev->io);
	if (ret) {
		FUNC15("error in pcmcia_request_io\n");
		goto out1;
	}

	/*
	 * Allocate an interrupt line.  Note that this does not assign
	 * a handler to the interrupt, unless the 'Handler' member of
	 * the irq structure is initialized.
	 */
	if (p_dev->conf.Attributes & CONF_ENABLE_IRQ) {
		ret = FUNC24(p_dev, &p_dev->irq);
		if (ret) {
			FUNC15("error in pcmcia_request_irq\n");
			goto out1;
		}
	}

	/* Initialize io access */
	card->iobase = FUNC8(p_dev->io.BasePort1, p_dev->io.NumPorts1);
	if (!card->iobase) {
		FUNC15("error in ioport_map\n");
		ret = -EIO;
		goto out1;
	}

	/*
	 * This actually configures the PCMCIA socket -- setting up
	 * the I/O windows and the interrupt mapping, and putting the
	 * card and host interface into "Memory and IO" mode.
	 */
	ret = FUNC22(p_dev, &p_dev->conf);
	if (ret) {
		FUNC15("error in pcmcia_request_configuration\n");
		goto out2;
	}

	/* Finally, report what we've done */
	FUNC12("irq %d, io 0x%04x-0x%04x\n",
	       p_dev->irq.AssignedIRQ, p_dev->io.BasePort1,
	       p_dev->io.BasePort1 + p_dev->io.NumPorts1 - 1);

	/*
	 * Most of the libertas cards can do unaligned register access, but some
	 * weird ones can not. That's especially true for the CF8305 card.
	 */
	card->align_regs = 0;

	/* Check if we have a current silicon */
	prod_id = FUNC6(card, IF_CS_PRODUCT_ID);
	if (FUNC1(p_dev)) {
		card->align_regs = 1;
		if (prod_id < IF_CS_CF8305_B1_REV) {
			FUNC15("old chips like 8305 rev B3 "
				"aren't supported\n");
			ret = -ENODEV;
			goto out2;
		}
	}

	if (FUNC2(p_dev) && prod_id < IF_CS_CF8381_B3_REV) {
		FUNC15("old chips like 8381 rev B3 aren't supported\n");
		ret = -ENODEV;
		goto out2;
	}

	if (FUNC3(p_dev) && prod_id < IF_CS_CF8385_B1_REV) {
		FUNC15("old chips like 8385 rev B1 aren't supported\n");
		ret = -ENODEV;
		goto out2;
	}

	/* Load the firmware early, before calling into libertas.ko */
	ret = FUNC4(card);
	if (ret == 0 && !FUNC1(p_dev))
		ret = FUNC5(card);
	if (ret)
		goto out2;

	/* Make this card known to the libertas driver */
	priv = FUNC11(card, &p_dev->dev);
	if (!priv) {
		ret = -ENOMEM;
		goto out2;
	}

	/* Finish setting up fields in lbs_private */
	card->priv = priv;
	priv->card = card;
	priv->hw_host_to_card = if_cs_host_to_card;
	priv->fw_ready = 1;

	/* Now actually get the IRQ */
	ret = FUNC25(p_dev->irq.AssignedIRQ, if_cs_interrupt,
		IRQF_SHARED, DRV_NAME, card);
	if (ret) {
		FUNC15("error in request_irq\n");
		goto out3;
	}

	/* Clear any interrupt cause that happend while sending
	 * firmware/initializing card */
	FUNC7(card, IF_CS_CARD_INT_CAUSE, IF_CS_BIT_MASK);
	FUNC0(card);

	/* And finally bring the card up */
	if (FUNC17(priv) != 0) {
		FUNC15("could not activate card\n");
		goto out3;
	}

	ret = 0;
	goto out;

out3:
	FUNC16(priv);
out2:
	FUNC9(card->iobase);
out1:
	FUNC18(p_dev);
out:
	FUNC14(LBS_DEB_CS, "ret %d", ret);
	return ret;
}