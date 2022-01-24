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
typedef  void* u32 ;
struct mlx4_ib_sriov {int /*<<< orphan*/  id_map_lock; int /*<<< orphan*/  cm_list; int /*<<< orphan*/  pv_id_table; } ;
struct id_map_entry {int slave_id; int /*<<< orphan*/  list; void* pv_cm_id; int /*<<< orphan*/  timeout; TYPE_1__* dev; scalar_t__ scheduled_delete; void* sl_cm_id; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct mlx4_ib_sriov sriov; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct id_map_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int MAX_ID_MASK ; 
 int /*<<< orphan*/  id_map_ent_timeout ; 
 int FUNC2 (int /*<<< orphan*/ *,struct id_map_entry*,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct id_map_entry*) ; 
 struct id_map_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_device*,struct id_map_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (struct ib_device*) ; 

__attribute__((used)) static struct id_map_entry *
FUNC12(struct ib_device *ibdev, int slave_id, u32 sl_cm_id)
{
	int ret, id;
	static int next_id;
	struct id_map_entry *ent;
	struct mlx4_ib_sriov *sriov = &FUNC11(ibdev)->sriov;

	ent = FUNC5(sizeof (struct id_map_entry), GFP_KERNEL);
	if (!ent) {
		FUNC7(ibdev, "Couldn't allocate id cache entry - out of memory\n");
		return FUNC0(-ENOMEM);
	}

	ent->sl_cm_id = sl_cm_id;
	ent->slave_id = slave_id;
	ent->scheduled_delete = 0;
	ent->dev = FUNC11(ibdev);
	FUNC1(&ent->timeout, id_map_ent_timeout);

	do {
		FUNC9(&FUNC11(ibdev)->sriov.id_map_lock);
		ret = FUNC2(&sriov->pv_id_table, ent,
					next_id, &id);
		if (!ret) {
			next_id = ((unsigned) id + 1) & MAX_ID_MASK;
			ent->pv_cm_id = (u32)id;
			FUNC8(ibdev, ent);
		}

		FUNC10(&sriov->id_map_lock);
	} while (ret == -EAGAIN && FUNC3(&sriov->pv_id_table, GFP_KERNEL));
	/*the function idr_get_new_above can return -ENOSPC, so don't insert in that case.*/
	if (!ret) {
		FUNC9(&sriov->id_map_lock);
		FUNC6(&ent->list, &sriov->cm_list);
		FUNC10(&sriov->id_map_lock);
		return ent;
	}
	/*error flow*/
	FUNC4(ent);
	FUNC7(ibdev, "No more space in the idr (err:0x%x)\n", ret);
	return FUNC0(-ENOMEM);
}