#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysinfo_3_2_2 {int /*<<< orphan*/  count; TYPE_2__* vm; } ;
struct lgr_info {int /*<<< orphan*/  vm_count; TYPE_1__* vm; } ;
struct TYPE_4__ {int /*<<< orphan*/  cpi; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpi; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  VM_LEVEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ lgr_page ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sysinfo_3_2_2*,int,int,int) ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static void FUNC3(struct lgr_info *lgr_info)
{
	struct sysinfo_3_2_2 *si = (void *) lgr_page;
	int i;

	if (FUNC2(si, 3, 2, 2) == -ENOSYS)
		return;
	for (i = 0; i < FUNC1(u8, si->count, VM_LEVEL_MAX); i++) {
		FUNC0(lgr_info->vm[i].name, si->vm[i].name,
			sizeof(si->vm[i].name));
		FUNC0(lgr_info->vm[i].cpi, si->vm[i].cpi,
			sizeof(si->vm[i].cpi));
	}
	lgr_info->vm_count = si->count;
}