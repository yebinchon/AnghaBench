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
struct pvr2_hdw {int flag_ok; } ;

/* Variables and functions */
 int /*<<< orphan*/  FX2CMD_ONAIR_DTV_POWER_OFF ; 
 int /*<<< orphan*/  FX2CMD_ONAIR_DTV_POWER_ON ; 
 int FUNC0 (struct pvr2_hdw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pvr2_hdw *hdw, int onoff)
{
	hdw->flag_ok = !0;
	return FUNC0(hdw,(onoff ?
					  FX2CMD_ONAIR_DTV_POWER_ON :
					  FX2CMD_ONAIR_DTV_POWER_OFF));
}