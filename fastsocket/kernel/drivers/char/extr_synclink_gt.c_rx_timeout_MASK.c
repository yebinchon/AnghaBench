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
struct slgt_info {int /*<<< orphan*/  task; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_bh; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long context)
{
	struct slgt_info *info = (struct slgt_info*)context;
	unsigned long flags;

	FUNC0(("%s rx_timeout\n", info->device_name));
	FUNC2(&info->lock, flags);
	info->pending_bh |= BH_RECEIVE;
	FUNC3(&info->lock, flags);
	FUNC1(&info->task);
}