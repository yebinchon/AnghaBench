#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int int32_t ;
struct TYPE_3__ {int* tag_commands; } ;

/* Variables and functions */
 int AHC_NUM_TARGETS ; 
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* aic7xxx_tag_info ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 

__attribute__((used)) static void
FUNC2(u_long arg, int instance, int targ, int32_t value)
{

	if ((instance >= 0) && (targ >= 0)
	 && (instance < FUNC0(aic7xxx_tag_info))
	 && (targ < AHC_NUM_TARGETS)) {
		aic7xxx_tag_info[instance].tag_commands[targ] = value & 0xff;
		if (bootverbose)
			FUNC1("tag_info[%d:%d] = %d\n", instance, targ, value);
	}
}