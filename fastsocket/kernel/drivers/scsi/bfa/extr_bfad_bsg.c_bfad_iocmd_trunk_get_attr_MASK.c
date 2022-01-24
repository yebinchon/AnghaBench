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
struct bfa_trunk_attr_s {int dummy; } ;
struct bfa_fcport_trunk_s {int /*<<< orphan*/  attr; } ;
struct TYPE_3__ {scalar_t__ topology; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_1__ cfg; struct bfa_fcport_trunk_s trunk; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_id; } ;
struct bfa_bsg_trunk_attr_s {int /*<<< orphan*/  status; TYPE_2__ attr; } ;

/* Variables and functions */
 struct bfa_fcport_s* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_STATUS_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC5(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_trunk_attr_s *iocmd = (struct bfa_bsg_trunk_attr_s *)cmd;
	struct bfa_fcport_s *fcport = FUNC0(&bfad->bfa);
	struct bfa_fcport_trunk_s *trunk = &fcport->trunk;
	unsigned long	flags;

	FUNC3(&bfad->bfad_lock, flags);
	if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) ||
		(fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
		iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
	else {
		FUNC2((void *)&iocmd->attr, (void *)&trunk->attr,
			sizeof(struct bfa_trunk_attr_s));
		iocmd->attr.port_id = FUNC1(&bfad->bfa);
		iocmd->status = BFA_STATUS_OK;
	}
	FUNC4(&bfad->bfad_lock, flags);

	return 0;
}