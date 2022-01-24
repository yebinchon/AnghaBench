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
typedef  int u32 ;
struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct ehca_cq {int /*<<< orphan*/  cq_number; TYPE_1__ ib_cq; int /*<<< orphan*/  mm_count_queue; int /*<<< orphan*/  ipz_queue; int /*<<< orphan*/  mm_count_galpa; int /*<<< orphan*/  galpas; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vm_area_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct vm_area_struct *vma, struct ehca_cq *cq,
			u32 rsrc_type)
{
	int ret;

	switch (rsrc_type) {
	case 0: /* galpa fw handle */
		FUNC0(cq->ib_cq.device, "cq_num=%x fw", cq->cq_number);
		ret = FUNC2(vma, &cq->galpas, &cq->mm_count_galpa);
		if (FUNC4(ret)) {
			FUNC1(cq->ib_cq.device,
				 "ehca_mmap_fw() failed rc=%i cq_num=%x",
				 ret, cq->cq_number);
			return ret;
		}
		break;

	case 1: /* cq queue_addr */
		FUNC0(cq->ib_cq.device, "cq_num=%x queue", cq->cq_number);
		ret = FUNC3(vma, &cq->ipz_queue, &cq->mm_count_queue);
		if (FUNC4(ret)) {
			FUNC1(cq->ib_cq.device,
				 "ehca_mmap_queue() failed rc=%i cq_num=%x",
				 ret, cq->cq_number);
			return ret;
		}
		break;

	default:
		FUNC1(cq->ib_cq.device, "bad resource type=%x cq_num=%x",
			 rsrc_type, cq->cq_number);
		return -EINVAL;
	}

	return 0;
}