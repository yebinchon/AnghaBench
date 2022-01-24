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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iscsi_tcp_task {int dummy; } ;
struct iscsi_session {int dummy; } ;
struct iscsi_endpoint {struct cxgbi_endpoint* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct cxgbi_task_data {int dummy; } ;
struct cxgbi_hba {TYPE_1__* cdev; struct Scsi_Host* shost; } ;
struct cxgbi_endpoint {struct cxgbi_hba* chba; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  itp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CXGBI_DBG_ISCSI ; 
 int /*<<< orphan*/  ISCSI_MAX_TARGET ; 
 struct cxgbi_hba* FUNC1 (struct Scsi_Host*) ; 
 struct iscsi_cls_session* FUNC2 (int /*<<< orphan*/ ,struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cls_session*) ; 
 scalar_t__ FUNC4 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct iscsi_endpoint*,struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

struct iscsi_cls_session *FUNC7(struct iscsi_endpoint *ep,
						u16 cmds_max, u16 qdepth,
						u32 initial_cmdsn)
{
	struct cxgbi_endpoint *cep;
	struct cxgbi_hba *chba;
	struct Scsi_Host *shost;
	struct iscsi_cls_session *cls_session;
	struct iscsi_session *session;

	if (!ep) {
		FUNC6("missing endpoint.\n");
		return NULL;
	}

	cep = ep->dd_data;
	chba = cep->chba;
	shost = chba->shost;

	FUNC0(chba != FUNC1(shost));

	cls_session = FUNC2(chba->cdev->itp, shost,
					cmds_max, 0,
					sizeof(struct iscsi_tcp_task) +
					sizeof(struct cxgbi_task_data),
					initial_cmdsn, ISCSI_MAX_TARGET);
	if (!cls_session)
		return NULL;

	session = cls_session->dd_data;
	if (FUNC4(session))
		goto remove_session;

	FUNC5(1 << CXGBI_DBG_ISCSI,
		"ep 0x%p, cls sess 0x%p.\n", ep, cls_session);
	return cls_session;

remove_session:
	FUNC3(cls_session);
	return NULL;
}