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
typedef  int /*<<< orphan*/  u16 ;
struct bfad_ioim_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_itnim_s {int /*<<< orphan*/  io_q; } ;
struct bfa_iotag_s {int /*<<< orphan*/  tag; } ;
struct bfa_ioim_s {int /*<<< orphan*/  qe; scalar_t__ nsgpgs; int /*<<< orphan*/  nsges; struct bfa_itnim_s* itnim; struct bfad_ioim_s* dio; } ;
struct bfa_fcpim_s {int /*<<< orphan*/  ios_active; TYPE_1__* fcp; } ;
struct TYPE_2__ {int /*<<< orphan*/  iotag_ioim_free_q; } ;

/* Variables and functions */
 struct bfa_fcpim_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_ioim_s* FUNC1 (struct bfa_fcpim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfa_iotag_s**) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  no_iotags ; 
 int /*<<< orphan*/  total_ios ; 

struct bfa_ioim_s *
FUNC5(struct bfa_s *bfa, struct bfad_ioim_s *dio,
		struct bfa_itnim_s *itnim, u16 nsges)
{
	struct bfa_fcpim_s *fcpim = FUNC0(bfa);
	struct bfa_ioim_s *ioim;
	struct bfa_iotag_s *iotag = NULL;

	/*
	 * alocate IOIM resource
	 */
	FUNC2(&fcpim->fcp->iotag_ioim_free_q, &iotag);
	if (!iotag) {
		FUNC3(itnim, no_iotags);
		return NULL;
	}

	ioim = FUNC1(fcpim, iotag->tag);

	ioim->dio = dio;
	ioim->itnim = itnim;
	ioim->nsges = nsges;
	ioim->nsgpgs = 0;

	FUNC3(itnim, total_ios);
	fcpim->ios_active++;

	FUNC4(&ioim->qe, &itnim->io_q);

	return ioim;
}