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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct bfa_fcport_trunk_s {TYPE_1__ attr; } ;
struct TYPE_4__ {scalar_t__ topology; int /*<<< orphan*/  trunked; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_2__ cfg; struct bfa_fcport_trunk_s trunk; } ;
struct bfa_bsg_gen_s {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 struct bfa_fcport_s* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ; 
 int BFA_STATUS_DPORT_ERR ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_STATUS_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  BFA_TRUNK_DISABLED ; 
 int /*<<< orphan*/  BFA_TRUNK_OFFLINE ; 
 unsigned int IOCMD_TRUNK_DISABLE ; 
 unsigned int IOCMD_TRUNK_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC7(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
	struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
	struct bfa_fcport_s *fcport = FUNC0(&bfad->bfa);
	struct bfa_fcport_trunk_s *trunk = &fcport->trunk;
	unsigned long	flags;

	FUNC5(&bfad->bfad_lock, flags);

	if (FUNC4(&bfad->bfa))
		return BFA_STATUS_DPORT_ERR;

	if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) ||
		(fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
		iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
	else {
		if (v_cmd == IOCMD_TRUNK_ENABLE) {
			trunk->attr.state = BFA_TRUNK_OFFLINE;
			FUNC1(&bfad->bfa);
			fcport->cfg.trunked = BFA_TRUE;
		} else if (v_cmd == IOCMD_TRUNK_DISABLE) {
			trunk->attr.state = BFA_TRUNK_DISABLED;
			FUNC1(&bfad->bfa);
			fcport->cfg.trunked = BFA_FALSE;
		}

		if (!FUNC3(&bfad->bfa))
			FUNC2(&bfad->bfa);

		iocmd->status = BFA_STATUS_OK;
	}

	FUNC6(&bfad->bfad_lock, flags);

	return 0;
}