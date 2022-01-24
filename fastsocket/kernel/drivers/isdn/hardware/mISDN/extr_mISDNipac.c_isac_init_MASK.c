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
typedef  int u8 ;
struct TYPE_3__ {long data; void* function; } ;
struct TYPE_4__ {int debug; TYPE_1__ timer; int /*<<< orphan*/  l1; } ;
struct isac_hw {int mocr; int type; int state; int adf2; int /*<<< orphan*/  name; TYPE_2__ dch; int /*<<< orphan*/ * mon_rx; int /*<<< orphan*/ * mon_tx; } ;

/* Variables and functions */
 int DEBUG_HW ; 
 int EINVAL ; 
 int IPACX__ON ; 
 int IPAC_TYPE_ISACX ; 
 int /*<<< orphan*/ * ISACVer ; 
 int /*<<< orphan*/  ISACX_CIR0 ; 
 int /*<<< orphan*/  ISACX_ID ; 
 int /*<<< orphan*/  ISACX_ISTA ; 
 int /*<<< orphan*/  ISACX_ISTAD ; 
 int /*<<< orphan*/  ISACX_MASK ; 
 int /*<<< orphan*/  ISACX_MASKD ; 
 int /*<<< orphan*/  ISACX_MODED ; 
 int /*<<< orphan*/  ISACX_STARD ; 
 int /*<<< orphan*/  ISACX_TR_CONF0 ; 
 int /*<<< orphan*/  ISACX_TR_CONF2 ; 
 int /*<<< orphan*/  ISAC_ADF1 ; 
 int /*<<< orphan*/  ISAC_ADF2 ; 
 int /*<<< orphan*/  ISAC_CIR0 ; 
 int /*<<< orphan*/  ISAC_CMD_RS ; 
 int /*<<< orphan*/  ISAC_EXIR ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int /*<<< orphan*/  ISAC_MODE ; 
 int /*<<< orphan*/  ISAC_RBCH ; 
 int /*<<< orphan*/  ISAC_SPCR ; 
 int /*<<< orphan*/  ISAC_SQXR ; 
 int /*<<< orphan*/  ISAC_STAR ; 
 int /*<<< orphan*/  ISAC_STCR ; 
 int /*<<< orphan*/  ISAC_TIMR ; 
 int FUNC0 (struct isac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isac_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ dbusy_timer_handler ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  isac_l1cmd ; 
 int /*<<< orphan*/  FUNC4 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct isac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static int
FUNC10(struct isac_hw *isac)
{
	u8 val;
	int err = 0;

	if (!isac->dch.l1) {
		err = FUNC2(&isac->dch, isac_l1cmd);
		if (err)
			return err;
	}
	isac->mon_tx = NULL;
	isac->mon_rx = NULL;
	isac->dch.timer.function = (void *) dbusy_timer_handler;
	isac->dch.timer.data = (long)isac;
	FUNC3(&isac->dch.timer);
	isac->mocr = 0xaa;
	if (isac->type & IPAC_TYPE_ISACX) {
		/* Disable all IRQ */
		FUNC1(isac, ISACX_MASK, 0xff);
		val = FUNC0(isac, ISACX_STARD);
		FUNC7("%s: ISACX STARD %x\n", isac->name, val);
		val = FUNC0(isac, ISACX_ISTAD);
		FUNC7("%s: ISACX ISTAD %x\n", isac->name, val);
		val = FUNC0(isac, ISACX_ISTA);
		FUNC7("%s: ISACX ISTA %x\n", isac->name, val);
		/* clear LDD */
		FUNC1(isac, ISACX_TR_CONF0, 0x00);
		/* enable transmitter */
		FUNC1(isac, ISACX_TR_CONF2, 0x00);
		/* transparent mode 0, RAC, stop/go */
		FUNC1(isac, ISACX_MODED, 0xc9);
		/* all HDLC IRQ unmasked */
		val = FUNC0(isac, ISACX_ID);
		if (isac->dch.debug & DEBUG_HW)
			FUNC9("%s: ISACX Design ID %x\n",
				isac->name, val & 0x3f);
		val = FUNC0(isac, ISACX_CIR0);
		FUNC7("%s: ISACX CIR0 %02X\n", isac->name, val);
		isac->state = val >> 4;
		FUNC4(isac);
		FUNC6(isac, ISAC_CMD_RS);
		FUNC1(isac, ISACX_MASK, IPACX__ON);
		FUNC1(isac, ISACX_MASKD, 0x00);
	} else { /* old isac */
		FUNC1(isac, ISAC_MASK, 0xff);
		val = FUNC0(isac, ISAC_STAR);
		FUNC7("%s: ISAC STAR %x\n", isac->name, val);
		val = FUNC0(isac, ISAC_MODE);
		FUNC7("%s: ISAC MODE %x\n", isac->name, val);
		val = FUNC0(isac, ISAC_ADF2);
		FUNC7("%s: ISAC ADF2 %x\n", isac->name, val);
		val = FUNC0(isac, ISAC_ISTA);
		FUNC7("%s: ISAC ISTA %x\n", isac->name, val);
		if (val & 0x01) {
			val = FUNC0(isac, ISAC_EXIR);
			FUNC7("%s: ISAC EXIR %x\n", isac->name, val);
		}
		val = FUNC0(isac, ISAC_RBCH);
		if (isac->dch.debug & DEBUG_HW)
			FUNC9("%s: ISAC version (%x): %s\n", isac->name,
				val, ISACVer[(val >> 5) & 3]);
		isac->type |= ((val >> 5) & 3);
		if (!isac->adf2)
			isac->adf2 = 0x80;
		if (!(isac->adf2 & 0x80)) { /* only IOM 2 Mode */
			FUNC8("%s: only support IOM2 mode but adf2=%02x\n",
				isac->name, isac->adf2);
			FUNC5(isac);
			return -EINVAL;
		}
		FUNC1(isac, ISAC_ADF2, isac->adf2);
		FUNC1(isac, ISAC_SQXR, 0x2f);
		FUNC1(isac, ISAC_SPCR, 0x00);
		FUNC1(isac, ISAC_STCR, 0x70);
		FUNC1(isac, ISAC_MODE, 0xc9);
		FUNC1(isac, ISAC_TIMR, 0x00);
		FUNC1(isac, ISAC_ADF1, 0x00);
		val = FUNC0(isac, ISAC_CIR0);
		FUNC7("%s: ISAC CIR0 %x\n", isac->name, val);
		isac->state = (val >> 2) & 0xf;
		FUNC4(isac);
		FUNC6(isac, ISAC_CMD_RS);
		FUNC1(isac, ISAC_MASK, 0);
	}
	return err;
}