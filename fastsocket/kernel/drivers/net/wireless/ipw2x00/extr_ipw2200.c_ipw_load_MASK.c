#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
struct ipw_priv {int eeprom_delay; TYPE_2__* rxq; int /*<<< orphan*/  status; TYPE_1__* ieee; } ;
struct ipw_fw {char* data; int /*<<< orphan*/  fw_size; int /*<<< orphan*/  ucode_size; int /*<<< orphan*/  boot_size; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  read; } ;
struct TYPE_5__ {int iw_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IPW_EEPROM_LOAD_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  IPW_INTA_BIT_FW_INITIALIZATION_DONE ; 
 int IPW_INTA_BIT_PARITY_ERROR ; 
 int /*<<< orphan*/  IPW_INTA_MASK_ALL ; 
 int /*<<< orphan*/  IPW_INTA_MASK_R ; 
 int /*<<< orphan*/  IPW_INTA_RW ; 
 scalar_t__ IPW_NIC_SRAM_LOWER_BOUND ; 
 scalar_t__ IPW_NIC_SRAM_UPPER_BOUND ; 
 int /*<<< orphan*/  IPW_RX_READ_INDEX ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  IW_MODE_ADHOC 130 
#define  IW_MODE_INFRA 129 
#define  IW_MODE_MONITOR 128 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int fw_loaded ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 int FUNC5 (struct ipw_priv*,struct firmware const**,char*) ; 
 int FUNC6 (struct ipw_priv*,char*,size_t) ; 
 int FUNC7 (struct ipw_priv*,char*,size_t) ; 
 int FUNC8 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct ipw_priv*) ; 
 int FUNC10 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ipw_priv*) ; 
 TYPE_2__* FUNC12 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct ipw_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct ipw_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ipw_priv*,scalar_t__,scalar_t__) ; 
 size_t FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct firmware const*) ; 

__attribute__((used)) static int FUNC23(struct ipw_priv *priv)
{
#ifndef CONFIG_PM
	const struct firmware *raw = NULL;
#endif
	struct ipw_fw *fw;
	u8 *boot_img, *ucode_img, *fw_img;
	u8 *name = NULL;
	int rc = 0, retries = 3;

	switch (priv->ieee->iw_mode) {
	case IW_MODE_ADHOC:
		name = "ipw2200-ibss.fw";
		break;
#ifdef CONFIG_IPW2200_MONITOR
	case IW_MODE_MONITOR:
		name = "ipw2200-sniffer.fw";
		break;
#endif
	case IW_MODE_INFRA:
		name = "ipw2200-bss.fw";
		break;
	}

	if (!name) {
		rc = -EINVAL;
		goto error;
	}

#ifdef CONFIG_PM
	if (!fw_loaded) {
#endif
		rc = FUNC5(priv, &raw, name);
		if (rc < 0)
			goto error;
#ifdef CONFIG_PM
	}
#endif

	fw = (void *)raw->data;
	boot_img = &fw->data[0];
	ucode_img = &fw->data[FUNC21(fw->boot_size)];
	fw_img = &fw->data[FUNC21(fw->boot_size) +
			   FUNC21(fw->ucode_size)];

	if (rc < 0)
		goto error;

	if (!priv->rxq)
		priv->rxq = FUNC12(priv);
	else
		FUNC15(priv, priv->rxq);
	if (!priv->rxq) {
		FUNC1("Unable to initialize Rx queue\n");
		goto error;
	}

      retry:
	/* Ensure interrupts are disabled */
	FUNC19(priv, IPW_INTA_MASK_R, ~IPW_INTA_MASK_ALL);
	priv->status &= ~STATUS_INT_ENABLED;

	/* ack pending interrupts */
	FUNC19(priv, IPW_INTA_RW, IPW_INTA_MASK_ALL);

	FUNC17(priv);

	rc = FUNC11(priv);
	if (rc < 0) {
		FUNC1("Unable to reset NIC\n");
		goto error;
	}

	FUNC20(priv, IPW_NIC_SRAM_LOWER_BOUND,
			IPW_NIC_SRAM_UPPER_BOUND - IPW_NIC_SRAM_LOWER_BOUND);

	/* DMA the initial boot firmware into the device */
	rc = FUNC6(priv, boot_img, FUNC21(fw->boot_size));
	if (rc < 0) {
		FUNC1("Unable to load boot firmware: %d\n", rc);
		goto error;
	}

	/* kick start the device */
	FUNC16(priv);

	/* wait for the device to finish its initial startup sequence */
	rc = FUNC8(priv, IPW_INTA_RW,
			  IPW_INTA_BIT_FW_INITIALIZATION_DONE, 500);
	if (rc < 0) {
		FUNC1("device failed to boot initial fw image\n");
		goto error;
	}
	FUNC0("initial device response after %dms\n", rc);

	/* ack fw init done interrupt */
	FUNC19(priv, IPW_INTA_RW, IPW_INTA_BIT_FW_INITIALIZATION_DONE);

	/* DMA the ucode into the device */
	rc = FUNC7(priv, ucode_img, FUNC21(fw->ucode_size));
	if (rc < 0) {
		FUNC1("Unable to load ucode: %d\n", rc);
		goto error;
	}

	/* stop nic */
	FUNC17(priv);

	/* DMA bss firmware into the device */
	rc = FUNC6(priv, fw_img, FUNC21(fw->fw_size));
	if (rc < 0) {
		FUNC1("Unable to load firmware: %d\n", rc);
		goto error;
	}
#ifdef CONFIG_PM
	fw_loaded = 1;
#endif

	FUNC19(priv, IPW_EEPROM_LOAD_DISABLE, 0);

	rc = FUNC9(priv);
	if (rc < 0) {
		FUNC1("Unable to initialize queues\n");
		goto error;
	}

	/* Ensure interrupts are disabled */
	FUNC19(priv, IPW_INTA_MASK_R, ~IPW_INTA_MASK_ALL);
	/* ack pending interrupts */
	FUNC19(priv, IPW_INTA_RW, IPW_INTA_MASK_ALL);

	/* kick start the device */
	FUNC16(priv);

	if (FUNC10(priv, IPW_INTA_RW) & IPW_INTA_BIT_PARITY_ERROR) {
		if (retries > 0) {
			FUNC2("Parity error.  Retrying init.\n");
			retries--;
			goto retry;
		}

		FUNC1("TODO: Handle parity error -- schedule restart?\n");
		rc = -EIO;
		goto error;
	}

	/* wait for the device */
	rc = FUNC8(priv, IPW_INTA_RW,
			  IPW_INTA_BIT_FW_INITIALIZATION_DONE, 500);
	if (rc < 0) {
		FUNC1("device failed to start within 500ms\n");
		goto error;
	}
	FUNC0("device response after %dms\n", rc);

	/* ack fw init done interrupt */
	FUNC19(priv, IPW_INTA_RW, IPW_INTA_BIT_FW_INITIALIZATION_DONE);

	/* read eeprom data and initialize the eeprom region of sram */
	priv->eeprom_delay = 1;
	FUNC3(priv);

	/* enable interrupts */
	FUNC4(priv);

	/* Ensure our queue has valid packets */
	FUNC14(priv);

	FUNC19(priv, IPW_RX_READ_INDEX, priv->rxq->read);

	/* ack pending interrupts */
	FUNC19(priv, IPW_INTA_RW, IPW_INTA_MASK_ALL);

#ifndef CONFIG_PM
	FUNC22(raw);
#endif
	return 0;

      error:
	if (priv->rxq) {
		FUNC13(priv, priv->rxq);
		priv->rxq = NULL;
	}
	FUNC18(priv);
	FUNC22(raw);
#ifdef CONFIG_PM
	fw_loaded = 0;
	raw = NULL;
#endif

	return rc;
}