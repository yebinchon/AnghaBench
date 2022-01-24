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
struct ubi_work {int torture; struct ubi_wl_entry* e; int /*<<< orphan*/ * func; } ;
struct ubi_wl_entry {int /*<<< orphan*/  ec; int /*<<< orphan*/  pnum; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  erase_worker ; 
 struct ubi_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,struct ubi_work*) ; 

__attribute__((used)) static int FUNC3(struct ubi_device *ubi, struct ubi_wl_entry *e,
			  int torture)
{
	struct ubi_work *wl_wrk;

	FUNC0("schedule erasure of PEB %d, EC %d, torture %d",
	       e->pnum, e->ec, torture);

	wl_wrk = FUNC1(sizeof(struct ubi_work), GFP_NOFS);
	if (!wl_wrk)
		return -ENOMEM;

	wl_wrk->func = &erase_worker;
	wl_wrk->e = e;
	wl_wrk->torture = torture;

	FUNC2(ubi, wl_wrk);
	return 0;
}