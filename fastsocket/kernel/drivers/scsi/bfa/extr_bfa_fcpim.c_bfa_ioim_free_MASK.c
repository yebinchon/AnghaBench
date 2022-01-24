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
struct bfa_iotag_s {int /*<<< orphan*/  qe; } ;
struct bfa_ioim_s {scalar_t__ nsgpgs; int /*<<< orphan*/  qe; int /*<<< orphan*/  iotag; int /*<<< orphan*/  itnim; int /*<<< orphan*/  sgpg_q; int /*<<< orphan*/  bfa; struct bfa_fcpim_s* fcpim; } ;
struct bfa_fcpim_s {TYPE_1__* fcp; int /*<<< orphan*/  ios_active; } ;
struct TYPE_2__ {int num_fwtio_reqs; int /*<<< orphan*/  iotag_tio_free_q; int /*<<< orphan*/  iotag_ioim_free_q; int /*<<< orphan*/  num_ioim_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOIM_IOTAG_MASK ; 
 struct bfa_iotag_s* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_comps ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct bfa_ioim_s *ioim)
{
	struct bfa_fcpim_s *fcpim = ioim->fcpim;
	struct bfa_iotag_s *iotag;

	if (ioim->nsgpgs > 0)
		FUNC2(ioim->bfa, &ioim->sgpg_q, ioim->nsgpgs);

	FUNC3(ioim->itnim, io_comps);
	fcpim->ios_active--;

	ioim->iotag &= BFA_IOIM_IOTAG_MASK;

	FUNC1(!(ioim->iotag <
		(fcpim->fcp->num_ioim_reqs + fcpim->fcp->num_fwtio_reqs)));
	iotag = FUNC0(fcpim->fcp, ioim->iotag);

	if (ioim->iotag < fcpim->fcp->num_ioim_reqs)
		FUNC4(&iotag->qe, &fcpim->fcp->iotag_ioim_free_q);
	else
		FUNC4(&iotag->qe, &fcpim->fcp->iotag_tio_free_q);

	FUNC5(&ioim->qe);
}