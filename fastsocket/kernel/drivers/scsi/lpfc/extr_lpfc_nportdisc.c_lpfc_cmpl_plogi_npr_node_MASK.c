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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_flag; } ;
struct TYPE_4__ {scalar_t__ ulpStatus; } ;
struct TYPE_3__ {struct lpfc_iocbq* rsp_iocb; } ;
struct lpfc_iocbq {TYPE_2__ iocb; TYPE_1__ context_un; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  TYPE_2__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  NLP_DEFER_RM ; 
 int /*<<< orphan*/  NLP_STE_FREED_NODE ; 
 struct Scsi_Host* FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC3(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			 void *arg, uint32_t evt)
{
	struct lpfc_iocbq *cmdiocb, *rspiocb;
	IOCB_t *irsp;
	struct Scsi_Host *shost = FUNC0(vport);

	cmdiocb = (struct lpfc_iocbq *) arg;
	rspiocb = cmdiocb->context_un.rsp_iocb;

	irsp = &rspiocb->iocb;
	if (irsp->ulpStatus) {
		FUNC1(shost->host_lock);
		ndlp->nlp_flag |= NLP_DEFER_RM;
		FUNC2(shost->host_lock);
		return NLP_STE_FREED_NODE;
	}
	return ndlp->nlp_state;
}