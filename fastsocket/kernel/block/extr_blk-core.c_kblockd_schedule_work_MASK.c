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
struct work_struct {int dummy; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  kblockd_workqueue ; 
 int FUNC0 (int /*<<< orphan*/ ,struct work_struct*) ; 

int FUNC1(struct request_queue *q, struct work_struct *work)
{
	return FUNC0(kblockd_workqueue, work);
}