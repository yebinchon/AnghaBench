#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct st5481_in {int dummy; } ;
struct st5481_d_out {int /*<<< orphan*/  fsm; } ;
struct st5481_adapter {int leds; struct st5481_in d_in; struct st5481_d_out d_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EP_D_OUT ; 
 int /*<<< orphan*/  FFMSK_D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int GREEN_LED ; 
 int /*<<< orphan*/  L1_MODE_HDLC ; 
 int /*<<< orphan*/  LBB ; 
 int /*<<< orphan*/  ST_DOUT_NONE ; 
 int USB_DIR_OUT ; 
 struct st5481_adapter* cs ; 
 int /*<<< orphan*/  FUNC2 (struct st5481_in*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct st5481_adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct st5481_adapter*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct st5481_adapter *adapter)
{
	struct st5481_d_out *d_out = &adapter->d_out;
	struct st5481_in *d_in = &adapter->d_in;

	FUNC0(8,"");
		
	FUNC1(&d_out->fsm, ST_DOUT_NONE);

	//	st5481_usb_device_ctrl_msg(adapter, FFMSK_D, OUT_UNDERRUN, NULL, NULL);
	FUNC3(adapter, FFMSK_D, 0xfc, NULL, NULL);
	FUNC2(d_in, L1_MODE_HDLC);

#ifdef LOOPBACK
	// Turn loopback on (data sent on B and D looped back)
	st5481_usb_device_ctrl_msg(cs, LBB, 0x04, NULL, NULL);
#endif

	FUNC4(adapter, EP_D_OUT | USB_DIR_OUT, NULL, NULL);

	// Turn on the green LED to tell that we are in state F7
	adapter->leds |= GREEN_LED;
	FUNC3(adapter, GPIO_OUT, adapter->leds, NULL, NULL);
}