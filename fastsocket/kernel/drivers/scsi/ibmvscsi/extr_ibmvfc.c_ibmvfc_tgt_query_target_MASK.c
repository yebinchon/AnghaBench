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
struct TYPE_6__ {int /*<<< orphan*/  port_name; } ;
struct ibmvfc_target {int /*<<< orphan*/  kref; TYPE_3__ ids; struct ibmvfc_host* vhost; } ;
struct TYPE_5__ {int version; int length; int /*<<< orphan*/  opcode; } ;
struct ibmvfc_query_tgt {int /*<<< orphan*/  wwpn; TYPE_2__ common; } ;
struct ibmvfc_host {scalar_t__ discovery_threads; } ;
struct TYPE_4__ {struct ibmvfc_query_tgt query_tgt; } ;
struct ibmvfc_event {TYPE_1__ iu; struct ibmvfc_target* tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int /*<<< orphan*/  IBMVFC_QUERY_TARGET ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_INIT_WAIT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int /*<<< orphan*/  default_timeout ; 
 scalar_t__ disc_threads ; 
 struct ibmvfc_event* FUNC0 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 scalar_t__ FUNC2 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_query_target_done ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_query_tgt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_target*,char*) ; 

__attribute__((used)) static void FUNC8(struct ibmvfc_target *tgt)
{
	struct ibmvfc_query_tgt *query_tgt;
	struct ibmvfc_host *vhost = tgt->vhost;
	struct ibmvfc_event *evt;

	if (vhost->discovery_threads >= disc_threads)
		return;

	FUNC4(&tgt->kref);
	evt = FUNC0(vhost);
	vhost->discovery_threads++;
	evt->tgt = tgt;
	FUNC1(evt, ibmvfc_tgt_query_target_done, IBMVFC_MAD_FORMAT);
	query_tgt = &evt->iu.query_tgt;
	FUNC6(query_tgt, 0, sizeof(*query_tgt));
	query_tgt->common.version = 1;
	query_tgt->common.opcode = IBMVFC_QUERY_TARGET;
	query_tgt->common.length = sizeof(*query_tgt);
	query_tgt->wwpn = tgt->ids.port_name;

	FUNC3(tgt, IBMVFC_TGT_ACTION_INIT_WAIT);
	if (FUNC2(evt, vhost, default_timeout)) {
		vhost->discovery_threads--;
		FUNC3(tgt, IBMVFC_TGT_ACTION_NONE);
		FUNC5(&tgt->kref, ibmvfc_release_tgt);
	} else
		FUNC7(tgt, "Sent Query Target\n");
}