#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvme_queue {int /*<<< orphan*/  sq_cong; int /*<<< orphan*/  sq_cong_wait; int /*<<< orphan*/  sq_full; } ;
struct nvme_ns {int dummy; } ;
struct bio {TYPE_2__* bi_bdev; } ;
struct TYPE_4__ {TYPE_1__* bd_disk; } ;
struct TYPE_3__ {struct nvme_ns* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct nvme_queue*,struct nvme_ns*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nvme_queue *nvmeq)
{
	while (FUNC3(&nvmeq->sq_cong)) {
		struct bio *bio = FUNC4(&nvmeq->sq_cong);
		struct nvme_ns *ns = bio->bi_bdev->bd_disk->private_data;

		if (FUNC2(&nvmeq->sq_cong))
			FUNC6(&nvmeq->sq_full,
							&nvmeq->sq_cong_wait);
		if (FUNC5(nvmeq, ns, bio)) {
			if (FUNC2(&nvmeq->sq_cong))
				FUNC0(&nvmeq->sq_full,
							&nvmeq->sq_cong_wait);
			FUNC1(&nvmeq->sq_cong, bio);
			break;
		}
	}
}