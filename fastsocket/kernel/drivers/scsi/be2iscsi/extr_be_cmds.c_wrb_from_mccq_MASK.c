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
struct be_queue_info {scalar_t__ len; int head; int /*<<< orphan*/  used; } ;
struct TYPE_3__ {struct be_queue_info q; } ;
struct TYPE_4__ {TYPE_1__ mcc_obj; } ;
struct beiscsi_hba {TYPE_2__ ctrl; } ;
struct be_mcc_wrb {int tag0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct be_queue_info*) ; 
 struct be_mcc_wrb* FUNC5 (struct be_queue_info*) ; 

struct be_mcc_wrb *FUNC6(struct beiscsi_hba *phba)
{
	struct be_queue_info *mccq = &phba->ctrl.mcc_obj.q;
	struct be_mcc_wrb *wrb;

	FUNC0(FUNC2(&mccq->used) >= mccq->len);
	wrb = FUNC5(mccq);
	FUNC3(wrb, 0, sizeof(*wrb));
	wrb->tag0 = (mccq->head & 0x000000FF) << 16;
	FUNC4(mccq);
	FUNC1(&mccq->used);
	return wrb;
}