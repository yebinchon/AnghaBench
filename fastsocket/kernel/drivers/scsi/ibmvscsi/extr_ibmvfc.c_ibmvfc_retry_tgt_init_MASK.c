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
struct ibmvfc_target {scalar_t__ init_retries; TYPE_1__* vhost; } ;
struct TYPE_2__ {int /*<<< orphan*/  work_wait_q; } ;

/* Variables and functions */
 scalar_t__ IBMVFC_MAX_TGT_INIT_RETRIES ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_target*,void (*) (struct ibmvfc_target*)) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ibmvfc_target *tgt,
				  void (*job_step) (struct ibmvfc_target *))
{
	if (++tgt->init_retries > IBMVFC_MAX_TGT_INIT_RETRIES) {
		FUNC1(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		FUNC2(&tgt->vhost->work_wait_q);
		return 0;
	} else
		FUNC0(tgt, job_step);
	return 1;
}