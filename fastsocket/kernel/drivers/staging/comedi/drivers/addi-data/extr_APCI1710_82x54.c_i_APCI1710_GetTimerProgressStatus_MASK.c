#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_9__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_10__ {TYPE_4__ s_BoardInfos; TYPE_3__* s_ModuleInfo; } ;
struct TYPE_7__ {TYPE_1__* s_82X54TimerInfo; } ;
struct TYPE_8__ {TYPE_2__ s_82X54ModuleInfo; } ;
struct TYPE_6__ {int b_82X54Init; } ;

/* Variables and functions */
 int APCI1710_82X54_TIMER ; 
 TYPE_5__* devpriv ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char) ; 

int FUNC3(struct comedi_device *dev,
				      unsigned char b_ModulNbr, unsigned char b_TimerNbr,
				      unsigned char *pb_TimerStatus)
{
	int i_ReturnValue = 0;
	unsigned int dw_TimerStatus;

	/* Test the module number */
	if (b_ModulNbr < 4) {
		/* Test if 82X54 timer */

		if ((devpriv->s_BoardInfos.dw_MolduleConfiguration[b_ModulNbr] & 0xFFFF0000UL) == APCI1710_82X54_TIMER) {
			/* Test the timer number */
			if (b_TimerNbr <= 2) {
				/* Test if timer initialised */
				if (devpriv->s_ModuleInfo[b_ModulNbr].s_82X54ModuleInfo.s_82X54TimerInfo[b_TimerNbr].b_82X54Init == 1) {
					/* Latch the timer value */
					FUNC1((2 << b_TimerNbr) | 0xE0, devpriv->s_BoardInfos.ui_Address + 12 + (64 * b_ModulNbr));

					/* Read the timer status */
					dw_TimerStatus = FUNC0(devpriv->s_BoardInfos.ui_Address + 16 + (b_TimerNbr * 4) + (64 * b_ModulNbr));

					*pb_TimerStatus = (unsigned char) ((dw_TimerStatus) >> 8) & 1;
					FUNC2("ProgressStatus : %d", *pb_TimerStatus);
				} else {
					/* Timer not initialised see function */
					i_ReturnValue = -5;
				}
			} else {
				/* Timer selection wrong */
				i_ReturnValue = -3;
			}	/*  if ((b_TimerNbr >= 0) && (b_TimerNbr <= 2)) */
		} else {
			/* The module is not a TIMER module */

			i_ReturnValue = -4;
		}
	} else {
		/* Module number error */

		i_ReturnValue = -2;
	}

	return i_ReturnValue;
}