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
 struct request_queue* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

struct request_queue *FUNC1(request_fn_proc *rfn, spinlock_t *lock)
{
	return FUNC0(rfn, lock, -1);
}