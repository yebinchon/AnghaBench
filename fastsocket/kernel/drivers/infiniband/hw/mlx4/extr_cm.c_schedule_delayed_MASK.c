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
struct mlx4_ib_sriov {int /*<<< orphan*/  id_map_lock; int /*<<< orphan*/  going_down_lock; int /*<<< orphan*/  is_going_down; } ;
struct id_map_entry {int scheduled_delete; int /*<<< orphan*/  timeout; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct mlx4_ib_sriov sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CLEANUP_CACHE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC5 (struct ib_device*) ; 

__attribute__((used)) static void FUNC6(struct ib_device *ibdev, struct id_map_entry *id)
{
	struct mlx4_ib_sriov *sriov = &FUNC5(ibdev)->sriov;
	unsigned long flags;

	FUNC1(&sriov->id_map_lock);
	FUNC2(&sriov->going_down_lock, flags);
	/*make sure that there is no schedule inside the scheduled work.*/
	if (!sriov->is_going_down) {
		id->scheduled_delete = 1;
		FUNC0(&id->timeout, CM_CLEANUP_CACHE_TIMEOUT);
	}
	FUNC4(&sriov->going_down_lock, flags);
	FUNC3(&sriov->id_map_lock);
}