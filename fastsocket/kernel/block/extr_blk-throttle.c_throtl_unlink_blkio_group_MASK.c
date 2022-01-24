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
struct throtl_data {TYPE_1__* queue; } ;
struct blkio_group {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct blkio_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_data*,int /*<<< orphan*/ ) ; 

void FUNC4(void *key, struct blkio_group *blkg)
{
	unsigned long flags;
	struct throtl_data *td = key;

	FUNC0(td->queue->queue_lock, flags);
	FUNC3(td, FUNC2(blkg));
	FUNC1(td->queue->queue_lock, flags);
}