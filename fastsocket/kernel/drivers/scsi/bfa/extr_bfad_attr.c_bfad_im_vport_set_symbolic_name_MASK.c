#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int /*<<< orphan*/  u8 ;
struct fc_vport {char* symbolic_name; scalar_t__ dd_data; } ;
struct TYPE_7__ {TYPE_1__* im_port; } ;
struct bfad_vport_s {TYPE_2__ drv_port; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct TYPE_8__ {int /*<<< orphan*/  symname; } ;
struct TYPE_9__ {TYPE_3__ sym_name; } ;
struct TYPE_10__ {TYPE_4__ port_cfg; } ;
struct bfa_fcs_vport_s {TYPE_5__ lport; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {struct Scsi_Host* shost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bfa_fcs_vport_s* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(struct fc_vport *fc_vport)
{
	struct bfad_vport_s *vport = (struct bfad_vport_s *)fc_vport->dd_data;
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *)vport->drv_port.im_port;
	struct bfad_s *bfad = im_port->bfad;
	struct Scsi_Host *vshost = vport->drv_port.im_port->shost;
	char *sym_name = fc_vport->symbolic_name;
	struct bfa_fcs_vport_s *fcs_vport;
	wwn_t	pwwn;
	unsigned long flags;

	FUNC8(FUNC3(vshost), (u8 *)&pwwn);

	FUNC4(&bfad->bfad_lock, flags);
	fcs_vport = FUNC2(&bfad->bfa_fcs, 0, pwwn);
	FUNC5(&bfad->bfad_lock, flags);

	if (fcs_vport == NULL)
		return;

	FUNC4(&bfad->bfad_lock, flags);
	if (FUNC7(sym_name) > 0) {
		FUNC6(fcs_vport->lport.port_cfg.sym_name.symname, sym_name);
		FUNC1(
			FUNC0((&fcs_vport->lport)), NULL);
	}
	FUNC5(&bfad->bfad_lock, flags);
}