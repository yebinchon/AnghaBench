#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ehca_shca {int dummy; } ;
struct ehca_mr_pginfo {int dummy; } ;
struct ehca_mr {int dummy; } ;
struct TYPE_6__ {TYPE_2__** top; } ;
struct TYPE_5__ {TYPE_1__** dir; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ent; } ;

/* Variables and functions */
 int EHCA_MAP_ENTRIES ; 
 scalar_t__ H_PAGE_REGISTERED ; 
 scalar_t__ H_SUCCESS ; 
 TYPE_3__* ehca_bmap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int,int,scalar_t__*,struct ehca_shca*,struct ehca_mr*,struct ehca_mr_pginfo*) ; 

__attribute__((used)) static u64 FUNC2(int top, int dir, u64 *kpage,
				struct ehca_shca *shca, struct ehca_mr *mr,
				struct ehca_mr_pginfo *pginfo)
{
	u64 hret = H_SUCCESS;
	int idx;

	for (idx = 0; idx < EHCA_MAP_ENTRIES; idx++) {
		if (!FUNC0(ehca_bmap->top[top]->dir[dir]->ent[idx]))
			continue;

		hret = FUNC1(top, dir, idx, kpage, shca, mr,
					   pginfo);
		if ((hret != H_SUCCESS) && (hret != H_PAGE_REGISTERED))
				return hret;
	}
	return hret;
}