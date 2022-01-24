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
typedef  int u32 ;
struct pvr2_hdw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_GPIO_OUT ; 
 int /*<<< orphan*/  PVR2_TRACE_GPIO ; 
 int FUNC0 (struct pvr2_hdw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct pvr2_hdw*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct pvr2_hdw *hdw,u32 msk,u32 val)
{
	u32 cval,nval;
	int ret;
	if (~msk) {
		ret = FUNC0(hdw,PVR2_GPIO_OUT,&cval);
		if (ret) return ret;
		nval = (cval & ~msk) | (val & msk);
		FUNC1(PVR2_TRACE_GPIO,
			   "GPIO output changing 0x%x:0x%x from 0x%x to 0x%x",
			   msk,val,cval,nval);
	} else {
		nval = val;
		FUNC1(PVR2_TRACE_GPIO,
			   "GPIO output changing to 0x%x",nval);
	}
	return FUNC2(hdw,PVR2_GPIO_OUT,nval);
}