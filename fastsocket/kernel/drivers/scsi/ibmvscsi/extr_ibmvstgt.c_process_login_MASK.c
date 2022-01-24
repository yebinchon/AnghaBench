#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tag; } ;
struct srp_login_rsp {int max_it_iu_len; int max_ti_iu_len; int buf_fmt; int /*<<< orphan*/  tag; int /*<<< orphan*/  req_lim_delta; int /*<<< orphan*/  opcode; } ;
struct TYPE_6__ {TYPE_1__ rsp; struct srp_login_rsp login_rsp; } ;
union viosrp_iu {int /*<<< orphan*/  roles; int /*<<< orphan*/  port_id; TYPE_2__ srp; } ;
typedef  union srp_iu {int dummy; } srp_iu ;
typedef  int /*<<< orphan*/  uint64_t ;
struct vio_port {scalar_t__ rport; TYPE_4__* dma_dev; } ;
struct srp_target {int dummy; } ;
struct srp_rport_identifiers {int /*<<< orphan*/  roles; int /*<<< orphan*/  port_id; TYPE_2__ srp; } ;
struct iu_entry {TYPE_3__* target; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ids ;
struct TYPE_8__ {int unit_address; } ;
struct TYPE_7__ {struct Scsi_Host* shost; } ;

/* Variables and functions */
 int /*<<< orphan*/  INITIAL_SRP_LIMIT ; 
 int SRP_BUF_FORMAT_DIRECT ; 
 int SRP_BUF_FORMAT_INDIRECT ; 
 int /*<<< orphan*/  SRP_LOGIN_RSP ; 
 int /*<<< orphan*/  SRP_RPORT_ROLE_INITIATOR ; 
 int /*<<< orphan*/  VIOSRP_SRP_FORMAT ; 
 struct srp_target* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (union viosrp_iu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iu_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (struct Scsi_Host*,union viosrp_iu*) ; 
 struct vio_port* FUNC5 (struct srp_target*) ; 
 union viosrp_iu* FUNC6 (struct iu_entry*) ; 

__attribute__((used)) static void FUNC7(struct iu_entry *iue)
{
	union viosrp_iu *iu = FUNC6(iue);
	struct srp_login_rsp *rsp = &iu->srp.login_rsp;
	uint64_t tag = iu->srp.rsp.tag;
	struct Scsi_Host *shost = iue->target->shost;
	struct srp_target *target = FUNC0(shost);
	struct vio_port *vport = FUNC5(target);
	struct srp_rport_identifiers ids;

	FUNC1(&ids, 0, sizeof(ids));
	FUNC3(ids.port_id, "%x", vport->dma_dev->unit_address);
	ids.roles = SRP_RPORT_ROLE_INITIATOR;
	if (!vport->rport)
		vport->rport = FUNC4(shost, &ids);

	/* TODO handle case that requested size is wrong and
	 * buffer format is wrong
	 */
	FUNC1(iu, 0, sizeof(struct srp_login_rsp));
	rsp->opcode = SRP_LOGIN_RSP;
	rsp->req_lim_delta = INITIAL_SRP_LIMIT;
	rsp->tag = tag;
	rsp->max_it_iu_len = sizeof(union srp_iu);
	rsp->max_ti_iu_len = sizeof(union srp_iu);
	/* direct and indirect */
	rsp->buf_fmt = SRP_BUF_FORMAT_DIRECT | SRP_BUF_FORMAT_INDIRECT;

	FUNC2(iue, sizeof(*rsp), VIOSRP_SRP_FORMAT);
}