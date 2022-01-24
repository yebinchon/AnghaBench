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
struct request_queue {int /*<<< orphan*/  node; } ;
struct hlist_head {int dummy; } ;
struct elevator_type {int /*<<< orphan*/  ops; } ;
struct elevator_queue {int /*<<< orphan*/ * hash; int /*<<< orphan*/  sysfs_lock; int /*<<< orphan*/  kobj; struct elevator_type* elevator_type; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ELV_HASH_ENTRIES ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct elevator_type*) ; 
 int /*<<< orphan*/  elv_ktype ; 
 int /*<<< orphan*/  FUNC2 (struct elevator_queue*) ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct elevator_queue *FUNC7(struct request_queue *q,
				  struct elevator_type *e)
{
	struct elevator_queue *eq;
	int i;

	eq = FUNC3(sizeof(*eq), GFP_KERNEL | __GFP_ZERO, q->node);
	if (FUNC6(!eq))
		goto err;

	eq->ops = &e->ops;
	eq->elevator_type = e;
	FUNC4(&eq->kobj, &elv_ktype);
	FUNC5(&eq->sysfs_lock);

	eq->hash = FUNC3(sizeof(struct hlist_head) * ELV_HASH_ENTRIES,
					GFP_KERNEL, q->node);
	if (!eq->hash)
		goto err;

	for (i = 0; i < ELV_HASH_ENTRIES; i++)
		FUNC0(&eq->hash[i]);

	return eq;
err:
	FUNC2(eq);
	FUNC1(e);
	return NULL;
}