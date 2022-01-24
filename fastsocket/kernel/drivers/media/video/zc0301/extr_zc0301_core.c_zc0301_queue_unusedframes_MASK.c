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
typedef  size_t u32 ;
struct zc0301_device {size_t nbuffers; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  inqueue; TYPE_1__* frame; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  frame; } ;

/* Variables and functions */
 scalar_t__ F_QUEUED ; 
 scalar_t__ F_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct zc0301_device* cam)
{
	unsigned long lock_flags;
	u32 i;

	for (i = 0; i < cam->nbuffers; i++)
		if (cam->frame[i].state == F_UNUSED) {
			cam->frame[i].state = F_QUEUED;
			FUNC1(&cam->queue_lock, lock_flags);
			FUNC0(&cam->frame[i].frame, &cam->inqueue);
			FUNC2(&cam->queue_lock, lock_flags);
		}
}