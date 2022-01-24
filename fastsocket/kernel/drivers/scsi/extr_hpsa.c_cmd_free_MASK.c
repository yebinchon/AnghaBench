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
struct ctlr_info {int /*<<< orphan*/  lock; scalar_t__ cmd_pool_bits; struct CommandList* cmd_pool; } ;
struct CommandList {int dummy; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ctlr_info *h, struct CommandList *c)
{
	int i;
	unsigned long flags;

	i = c - h->cmd_pool;
	FUNC1(&h->lock, flags);
	FUNC0(i & (BITS_PER_LONG - 1),
		  h->cmd_pool_bits + (i / BITS_PER_LONG));
	FUNC2(&h->lock, flags);
}