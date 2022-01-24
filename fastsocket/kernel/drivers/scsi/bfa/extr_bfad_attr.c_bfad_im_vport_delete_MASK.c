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
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int /*<<< orphan*/  u8 ;
struct fc_vport {scalar_t__ dd_data; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int flags; TYPE_1__* im_port; } ;
struct bfad_vport_s {struct completion* comp_del; TYPE_2__ drv_port; int /*<<< orphan*/  fcs_vport; int /*<<< orphan*/  list_entry; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct bfad_port_s {int dummy; } ;
struct bfad_im_port_s {int flags; struct bfad_port_s* port; struct bfad_s* bfad; } ;
struct bfa_fcs_vport_s {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* shost; } ;

/* Variables and functions */
 int BFAD_PORT_DELETE ; 
 int BFA_STATUS_PBC ; 
 int VPCERR_BAD_WWN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct bfa_fcs_vport_s* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,struct bfad_im_port_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct completion*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfad_vport_s*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct completion*) ; 

__attribute__((used)) static int
FUNC11(struct fc_vport *fc_vport)
{
	struct bfad_vport_s *vport = (struct bfad_vport_s *)fc_vport->dd_data;
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) vport->drv_port.im_port;
	struct bfad_s *bfad = im_port->bfad;
	struct bfad_port_s *port;
	struct bfa_fcs_vport_s *fcs_vport;
	struct Scsi_Host *vshost;
	wwn_t   pwwn;
	int rc;
	unsigned long flags;
	struct completion fcomp;

	if (im_port->flags & BFAD_PORT_DELETE) {
		FUNC2(bfad, im_port);
		FUNC6(&vport->list_entry);
		FUNC5(vport);
		return 0;
	}

	port = im_port->port;

	vshost = vport->drv_port.im_port->shost;
	FUNC9(FUNC3(vshost), (u8 *)&pwwn);

	FUNC7(&bfad->bfad_lock, flags);
	fcs_vport = FUNC1(&bfad->bfa_fcs, 0, pwwn);
	FUNC8(&bfad->bfad_lock, flags);

	if (fcs_vport == NULL)
		return VPCERR_BAD_WWN;

	vport->drv_port.flags |= BFAD_PORT_DELETE;

	vport->comp_del = &fcomp;
	FUNC4(vport->comp_del);

	FUNC7(&bfad->bfad_lock, flags);
	rc = FUNC0(&vport->fcs_vport);
	FUNC8(&bfad->bfad_lock, flags);

	if (rc == BFA_STATUS_PBC) {
		vport->drv_port.flags &= ~BFAD_PORT_DELETE;
		vport->comp_del = NULL;
		return -1;
	}

	FUNC10(vport->comp_del);

	FUNC2(bfad, im_port);

	FUNC5(vport);

	return 0;
}