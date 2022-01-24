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
struct request_queue {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  request_fn_proc ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 struct request_queue* FUNC2 (struct request_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

struct request_queue *
FUNC3(request_fn_proc *rfn, spinlock_t *lock, int node_id)
{
	struct request_queue *uninit_q, *q;

	uninit_q = FUNC0(GFP_KERNEL, node_id);
	if (!uninit_q)
		return NULL;

	q = FUNC2(uninit_q, rfn, lock, node_id);
	if (!q)
		FUNC1(uninit_q);

	return q;
}