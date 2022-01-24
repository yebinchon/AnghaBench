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
struct efx_vf {int /*<<< orphan*/  flush_waitq; int /*<<< orphan*/  txq_count; int /*<<< orphan*/  txq_mask; } ;
struct efx_nic {int dummy; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSF_AZ_DRIVER_EV_SUBDATA ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct efx_vf*) ; 
 scalar_t__ FUNC3 (struct efx_nic*,unsigned int,struct efx_vf**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct efx_nic *efx, efx_qword_t *event)
{
	struct efx_vf *vf;
	unsigned queue, qid;

	queue = FUNC0(*event,  FSF_AZ_DRIVER_EV_SUBDATA);
	if (FUNC3(efx, queue, &vf, &qid))
		return;
	/* Ignore flush completions triggered by an FLR */
	if (!FUNC4(qid, vf->txq_mask))
		return;

	FUNC1(qid, vf->txq_mask);
	--vf->txq_count;

	if (FUNC2(vf))
		FUNC5(&vf->flush_waitq);
}