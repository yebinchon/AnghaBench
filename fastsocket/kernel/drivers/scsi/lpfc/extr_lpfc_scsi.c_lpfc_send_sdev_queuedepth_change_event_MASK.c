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
typedef  void* uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_nodename; int /*<<< orphan*/  nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  work_list; } ;
struct TYPE_8__ {int /*<<< orphan*/  evt_listp; int /*<<< orphan*/  evt; } ;
struct TYPE_5__ {int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; void* lun; int /*<<< orphan*/  subcategory; int /*<<< orphan*/  event_type; } ;
struct TYPE_6__ {void* newval; void* oldval; TYPE_1__ scsi_event; } ;
struct TYPE_7__ {TYPE_2__ queue_depth_evt; } ;
struct lpfc_fast_path_event {TYPE_4__ work_evt; struct lpfc_vport* vport; TYPE_3__ un; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_REG_SCSI_EVENT ; 
 int /*<<< orphan*/  LPFC_EVENT_VARQUEDEPTH ; 
 int /*<<< orphan*/  LPFC_EVT_FASTPATH_MGMT_EVT ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lpfc_fast_path_event* FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct lpfc_hba *phba,
		struct lpfc_vport  *vport,
		struct lpfc_nodelist *ndlp,
		uint32_t lun,
		uint32_t old_val,
		uint32_t new_val)
{
	struct lpfc_fast_path_event *fast_path_evt;
	unsigned long flags;

	fast_path_evt = FUNC2(phba);
	if (!fast_path_evt)
		return;

	fast_path_evt->un.queue_depth_evt.scsi_event.event_type =
		FC_REG_SCSI_EVENT;
	fast_path_evt->un.queue_depth_evt.scsi_event.subcategory =
		LPFC_EVENT_VARQUEDEPTH;

	/* Report all luns with change in queue depth */
	fast_path_evt->un.queue_depth_evt.scsi_event.lun = lun;
	if (ndlp && FUNC0(ndlp)) {
		FUNC4(&fast_path_evt->un.queue_depth_evt.scsi_event.wwpn,
			&ndlp->nlp_portname, sizeof(struct lpfc_name));
		FUNC4(&fast_path_evt->un.queue_depth_evt.scsi_event.wwnn,
			&ndlp->nlp_nodename, sizeof(struct lpfc_name));
	}

	fast_path_evt->un.queue_depth_evt.oldval = old_val;
	fast_path_evt->un.queue_depth_evt.newval = new_val;
	fast_path_evt->vport = vport;

	fast_path_evt->work_evt.evt = LPFC_EVT_FASTPATH_MGMT_EVT;
	FUNC5(&phba->hbalock, flags);
	FUNC1(&fast_path_evt->work_evt.evt_listp, &phba->work_list);
	FUNC6(&phba->hbalock, flags);
	FUNC3(phba);

	return;
}