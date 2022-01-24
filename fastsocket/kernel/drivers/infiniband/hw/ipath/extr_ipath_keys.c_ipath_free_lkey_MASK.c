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
typedef  int u32 ;
struct ipath_lkey_table {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** table; } ;

/* Variables and functions */
 int ib_ipath_lkey_table_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC2(struct ipath_lkey_table *rkt, u32 lkey)
{
	unsigned long flags;
	u32 r;

	if (lkey == 0)
		return;
	r = lkey >> (32 - ib_ipath_lkey_table_size);
	FUNC0(&rkt->lock, flags);
	rkt->table[r] = NULL;
	FUNC1(&rkt->lock, flags);
}