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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ubi_scan_leb {int pnum; int ec; TYPE_1__ u; } ;
struct list_head {int dummy; } ;
struct ubi_scan_info {int corr_count; struct list_head alien; struct list_head corr; struct list_head erase; struct list_head free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 struct ubi_scan_leb* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC4(struct ubi_scan_info *si, int pnum, int ec,
		       struct list_head *list)
{
	struct ubi_scan_leb *seb;

	if (list == &si->free)
		FUNC1("add to free: PEB %d, EC %d", pnum, ec);
	else if (list == &si->erase)
		FUNC1("add to erase: PEB %d, EC %d", pnum, ec);
	else if (list == &si->corr) {
		FUNC1("add to corrupted: PEB %d, EC %d", pnum, ec);
		si->corr_count += 1;
	} else if (list == &si->alien)
		FUNC1("add to alien: PEB %d, EC %d", pnum, ec);
	else
		FUNC0();

	seb = FUNC2(sizeof(struct ubi_scan_leb), GFP_KERNEL);
	if (!seb)
		return -ENOMEM;

	seb->pnum = pnum;
	seb->ec = ec;
	FUNC3(&seb->u.list, list);
	return 0;
}