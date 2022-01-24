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
struct ibmvfc_target {int /*<<< orphan*/  kref; int /*<<< orphan*/  scsi_id; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int version; int length; int /*<<< orphan*/  opcode; } ;
struct ibmvfc_implicit_logout {int /*<<< orphan*/  old_scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {scalar_t__ discovery_threads; } ;
struct TYPE_3__ {struct ibmvfc_implicit_logout implicit_logout; } ;
struct ibmvfc_event {TYPE_1__ iu; struct ibmvfc_target* tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_IMPLICIT_LOGOUT ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_INIT_WAIT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int /*<<< orphan*/  default_timeout ; 
 scalar_t__ disc_threads ; 
 struct ibmvfc_event* FUNC0 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 scalar_t__ FUNC2 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_implicit_logout_done ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_implicit_logout*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_target*,char*) ; 

__attribute__((used)) static void FUNC8(struct ibmvfc_target *tgt)
{
	struct ibmvfc_implicit_logout *mad;
	struct ibmvfc_host *vhost = tgt->vhost;
	struct ibmvfc_event *evt;

	if (vhost->discovery_threads >= disc_threads)
		return;

	FUNC4(&tgt->kref);
	evt = FUNC0(vhost);
	vhost->discovery_threads++;
	FUNC1(evt, ibmvfc_tgt_implicit_logout_done, IBMVFC_MAD_FORMAT);
	evt->tgt = tgt;
	mad = &evt->iu.implicit_logout;
	FUNC6(mad, 0, sizeof(*mad));
	mad->common.version = 1;
	mad->common.opcode = IBMVFC_IMPLICIT_LOGOUT;
	mad->common.length = sizeof(*mad);
	mad->old_scsi_id = tgt->scsi_id;

	FUNC3(tgt, IBMVFC_TGT_ACTION_INIT_WAIT);
	if (FUNC2(evt, vhost, default_timeout)) {
		vhost->discovery_threads--;
		FUNC3(tgt, IBMVFC_TGT_ACTION_NONE);
		FUNC5(&tgt->kref, ibmvfc_release_tgt);
	} else
		FUNC7(tgt, "Sent Implicit Logout\n");
}