#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pbc_disabled; } ;
struct TYPE_5__ {TYPE_1__ port; } ;
struct bfa_s {TYPE_2__ modules; int /*<<< orphan*/  ioc; } ;
struct TYPE_6__ {scalar_t__ maxfrsize; int /*<<< orphan*/  rx_bbcredit; } ;
struct bfa_fcport_s {int /*<<< orphan*/  speed_sup; TYPE_3__ cfg; } ;

/* Variables and functions */
 struct bfa_fcport_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcport_s*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct bfa_s *bfa)
{
	struct bfa_fcport_s *fcport = FUNC0(bfa);

	/*
	 * Initialize port attributes from IOC hardware data.
	 */
	FUNC3(fcport);
	if (fcport->cfg.maxfrsize == 0)
		fcport->cfg.maxfrsize = FUNC4(&bfa->ioc);
	fcport->cfg.rx_bbcredit = FUNC5(&bfa->ioc);
	fcport->speed_sup = FUNC6(&bfa->ioc);

	if (FUNC2(bfa))
		bfa->modules.port.pbc_disabled = BFA_TRUE;

	FUNC1(!fcport->cfg.maxfrsize);
	FUNC1(!fcport->cfg.rx_bbcredit);
	FUNC1(!fcport->speed_sup);
}