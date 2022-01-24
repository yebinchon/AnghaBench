#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int isActive; } ;
typedef  size_t HvLpIndex ;

/* Variables and functions */
 size_t HVMAXARCHITECTEDLPS ; 
 size_t HvLpIndexInvalid ; 
 TYPE_1__* viopathStatus ; 

int FUNC0(HvLpIndex lp)
{
	if (lp == HvLpIndexInvalid)
		return 0;
	if (lp < HVMAXARCHITECTEDLPS)
		return viopathStatus[lp].isActive;
	else
		return 0;
}