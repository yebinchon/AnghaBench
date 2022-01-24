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
struct TYPE_2__ {int /*<<< orphan*/  hdw; } ;
struct pvr2_sysfs {TYPE_1__ channel; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_sysfs*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct pvr2_sysfs *sfp)
{
	unsigned int idx,cnt;
	cnt = FUNC0(sfp->channel.hdw);
	for (idx = 0; idx < cnt; idx++) {
		FUNC1(sfp,idx);
	}
}