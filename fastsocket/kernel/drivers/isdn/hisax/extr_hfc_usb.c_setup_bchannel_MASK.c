#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* b_mode; scalar_t__ disc_flag; } ;
typedef  TYPE_1__ hfcusb_data ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  HFCUSB_CON_HDLC ; 
 int /*<<< orphan*/  HFCUSB_DBG_STATES ; 
 int /*<<< orphan*/  HFCUSB_FIFO ; 
 int /*<<< orphan*/  HFCUSB_INC_RES_F ; 
 int /*<<< orphan*/  HFCUSB_SCTRL ; 
 int /*<<< orphan*/  HFCUSB_SCTRL_R ; 
 int L1_MODE_NULL ; 
 int L1_MODE_TRANS ; 
 int /*<<< orphan*/  LED_B1_OFF ; 
 int /*<<< orphan*/  LED_B1_ON ; 
 int /*<<< orphan*/  LED_B2_OFF ; 
 int /*<<< orphan*/  LED_B2_ON ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(hfcusb_data * hfc, int channel, int mode)
{
	__u8 val, idx_table[2] = { 0, 2 };

	if (hfc->disc_flag) {
		return;
	}
	FUNC0(HFCUSB_DBG_STATES, "HFC-S USB: setting channel %d to mode %d",
	    channel, mode);
	hfc->b_mode[channel] = mode;

	/* setup CON_HDLC */
	val = 0;
	if (mode != L1_MODE_NULL)
		val = 8;	/* enable fifo? */
	if (mode == L1_MODE_TRANS)
		val |= 2;	/* set transparent bit */

	/* set FIFO to transmit register */
	FUNC2(hfc, HFCUSB_FIFO, idx_table[channel], 1);
	FUNC2(hfc, HFCUSB_CON_HDLC, val, 1);
	/* reset fifo */
	FUNC2(hfc, HFCUSB_INC_RES_F, 2, 1);
	/* set FIFO to receive register */
	FUNC2(hfc, HFCUSB_FIFO, idx_table[channel] + 1, 1);
	FUNC2(hfc, HFCUSB_CON_HDLC, val, 1);
	/* reset fifo */
	FUNC2(hfc, HFCUSB_INC_RES_F, 2, 1);

	val = 0x40;
	if (hfc->b_mode[0])
		val |= 1;
	if (hfc->b_mode[1])
		val |= 2;
	FUNC2(hfc, HFCUSB_SCTRL, val, 1);

	val = 0;
	if (hfc->b_mode[0])
		val |= 1;
	if (hfc->b_mode[1])
		val |= 2;
	FUNC2(hfc, HFCUSB_SCTRL_R, val, 1);

	if (mode == L1_MODE_NULL) {
		if (channel)
			FUNC1(hfc, LED_B2_OFF);
		else
			FUNC1(hfc, LED_B1_OFF);
	} else {
		if (channel)
			FUNC1(hfc, LED_B2_ON);
		else
			FUNC1(hfc, LED_B1_ON);
	}
}