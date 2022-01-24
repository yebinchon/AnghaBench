#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_flag; } ;
struct lpfc_iocbq {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_ACC ; 
 int /*<<< orphan*/  NLP_LOGO_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,struct lpfc_iocbq*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC4(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			 void *arg, uint32_t evt)
{
	struct Scsi_Host  *shost = FUNC1(vport);
	struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *)arg;

	FUNC2(shost->host_lock);
	ndlp->nlp_flag &= NLP_LOGO_ACC;
	FUNC3(shost->host_lock);
	FUNC0(vport, ELS_CMD_ACC, cmdiocb, ndlp, NULL);
	return ndlp->nlp_state;
}