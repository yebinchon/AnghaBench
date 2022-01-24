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
struct stripe_head {int disks; TYPE_1__* dev; scalar_t__ ddf_layout; } ;
struct page {int dummy; } ;
struct TYPE_2__ {struct page* page; } ;

/* Variables and functions */
 int FUNC0 (struct stripe_head*) ; 
 int FUNC1 (int,struct stripe_head*,int*,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct page **srcs, struct stripe_head *sh)
{
	int disks = sh->disks;
	int syndrome_disks = sh->ddf_layout ? disks : (disks - 2);
	int d0_idx = FUNC0(sh);
	int count;
	int i;

	for (i = 0; i < disks; i++)
		srcs[i] = NULL;

	count = 0;
	i = d0_idx;
	do {
		int slot = FUNC1(i, sh, &count, syndrome_disks);

		srcs[slot] = sh->dev[i].page;
		i = FUNC2(i, disks);
	} while (i != d0_idx);

	return syndrome_disks;
}