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
typedef  scalar_t__ u32 ;
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct TYPE_2__ {scalar_t__ eccmask; scalar_t__ enable; } ;
struct i7core_pvt {TYPE_1__ inject; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC2(struct mem_ctl_info *mci,
					const char *data, size_t count)
{
	struct i7core_pvt *pvt = mci->pvt_info;
	unsigned long value;
	int rc;

	if (pvt->inject.enable)
		FUNC0(mci);

	rc = FUNC1(data, 10, &value);
	if (rc < 0)
		return -EIO;

	pvt->inject.eccmask = (u32) value;
	return count;
}