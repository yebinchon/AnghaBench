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
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct TYPE_2__ {int eccmask; } ;
struct i7core_pvt {TYPE_1__ inject; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC1(struct mem_ctl_info *mci,
					      char *data)
{
	struct i7core_pvt *pvt = mci->pvt_info;
	return FUNC0(data, "0x%08x\n", pvt->inject.eccmask);
}