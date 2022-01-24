#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct tty_struct {int dummy; } ;
struct nozomi {int last_ier; int /*<<< orphan*/  spin_mutex; TYPE_2__* port; int /*<<< orphan*/  flip; int /*<<< orphan*/  reg_ier; int /*<<< orphan*/  reg_fcr; TYPE_1__* pdev; int /*<<< orphan*/  reg_iir; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  port; int /*<<< orphan*/  toggle_dl; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int APP1_DL ; 
 int APP1_UL ; 
 int APP2_DL ; 
 int APP2_UL ; 
 int CTRL_DL ; 
 int CTRL_UL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int DIAG_DL ; 
 int /*<<< orphan*/  DIAG_DL1 ; 
 int /*<<< orphan*/  DIAG_DL2 ; 
 int DIAG_UL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MDM_DL ; 
 int /*<<< orphan*/  MDM_DL1 ; 
 int /*<<< orphan*/  MDM_DL2 ; 
 int MDM_UL ; 
 unsigned int NOZOMI_MAX_PORTS ; 
 size_t PORT_APP1 ; 
 size_t PORT_APP2 ; 
 size_t PORT_DIAG ; 
 size_t PORT_MDM ; 
 int RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nozomi*,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nozomi*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct nozomi*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (size_t,struct nozomi*) ; 
 int /*<<< orphan*/  FUNC9 (struct nozomi*) ; 
 scalar_t__ FUNC10 (size_t,struct nozomi*) ; 
 scalar_t__ FUNC11 (struct nozomi*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct tty_struct*) ; 
 struct tty_struct* FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC20(int irq, void *dev_id)
{
	struct nozomi *dc = dev_id;
	unsigned int a;
	u16 read_iir;

	if (!dc)
		return IRQ_NONE;

	FUNC12(&dc->spin_mutex);
	read_iir = FUNC7(dc->reg_iir);

	/* Card removed */
	if (read_iir == (u16)-1)
		goto none;
	/*
	 * Just handle interrupt enabled in IER
	 * (by masking with dc->last_ier)
	 */
	read_iir &= dc->last_ier;

	if (read_iir == 0)
		goto none;


	FUNC1("%s irq:0x%04X, prev:0x%04X", FUNC5(read_iir), read_iir,
		dc->last_ier);

	if (read_iir & RESET) {
		if (FUNC18(!FUNC6(dc))) {
			dc->last_ier = 0x0;
			FUNC19(dc->last_ier, dc->reg_ier);
			FUNC2(&dc->pdev->dev, "Could not read status from "
				"card, we should disable interface\n");
		} else {
			FUNC19(RESET, dc->reg_fcr);
		}
		/* No more useful info if this was the reset interrupt. */
		goto exit_handler;
	}
	if (read_iir & CTRL_UL) {
		FUNC0("CTRL_UL");
		dc->last_ier &= ~CTRL_UL;
		FUNC19(dc->last_ier, dc->reg_ier);
		if (FUNC11(dc)) {
			FUNC19(CTRL_UL, dc->reg_fcr);
			dc->last_ier = dc->last_ier | CTRL_UL;
			FUNC19(dc->last_ier, dc->reg_ier);
		}
	}
	if (read_iir & CTRL_DL) {
		FUNC9(dc);
		FUNC19(CTRL_DL, dc->reg_fcr);
	}
	if (read_iir & MDM_DL) {
		if (!FUNC3(dc, PORT_MDM,
				&(dc->port[PORT_MDM].toggle_dl), read_iir,
				MDM_DL1, MDM_DL2)) {
			FUNC2(&dc->pdev->dev, "MDM_DL out of sync!\n");
			goto exit_handler;
		}
	}
	if (read_iir & MDM_UL) {
		if (!FUNC4(dc, PORT_MDM, read_iir)) {
			FUNC2(&dc->pdev->dev, "MDM_UL out of sync!\n");
			goto exit_handler;
		}
	}
	if (read_iir & DIAG_DL) {
		if (!FUNC3(dc, PORT_DIAG,
				&(dc->port[PORT_DIAG].toggle_dl), read_iir,
				DIAG_DL1, DIAG_DL2)) {
			FUNC2(&dc->pdev->dev, "DIAG_DL out of sync!\n");
			goto exit_handler;
		}
	}
	if (read_iir & DIAG_UL) {
		dc->last_ier &= ~DIAG_UL;
		FUNC19(dc->last_ier, dc->reg_ier);
		if (FUNC10(PORT_DIAG, dc)) {
			FUNC19(DIAG_UL, dc->reg_fcr);
			dc->last_ier = dc->last_ier | DIAG_UL;
			FUNC19(dc->last_ier, dc->reg_ier);
		}
	}
	if (read_iir & APP1_DL) {
		if (FUNC8(PORT_APP1, dc))
			FUNC19(APP1_DL, dc->reg_fcr);
	}
	if (read_iir & APP1_UL) {
		dc->last_ier &= ~APP1_UL;
		FUNC19(dc->last_ier, dc->reg_ier);
		if (FUNC10(PORT_APP1, dc)) {
			FUNC19(APP1_UL, dc->reg_fcr);
			dc->last_ier = dc->last_ier | APP1_UL;
			FUNC19(dc->last_ier, dc->reg_ier);
		}
	}
	if (read_iir & APP2_DL) {
		if (FUNC8(PORT_APP2, dc))
			FUNC19(APP2_DL, dc->reg_fcr);
	}
	if (read_iir & APP2_UL) {
		dc->last_ier &= ~APP2_UL;
		FUNC19(dc->last_ier, dc->reg_ier);
		if (FUNC10(PORT_APP2, dc)) {
			FUNC19(APP2_UL, dc->reg_fcr);
			dc->last_ier = dc->last_ier | APP2_UL;
			FUNC19(dc->last_ier, dc->reg_ier);
		}
	}

exit_handler:
	FUNC13(&dc->spin_mutex);
	for (a = 0; a < NOZOMI_MAX_PORTS; a++) {
		struct tty_struct *tty;
		if (FUNC14(a, &dc->flip)) {
			tty = FUNC17(&dc->port[a].port);
			if (tty)
				FUNC15(tty);
			FUNC16(tty);
		}
	}
	return IRQ_HANDLED;
none:
	FUNC13(&dc->spin_mutex);
	return IRQ_NONE;
}