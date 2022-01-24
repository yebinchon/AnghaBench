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
struct TYPE_2__ {int /*<<< orphan*/ * ndlp; } ;
struct lpfc_iocbq {int /*<<< orphan*/ * context1; scalar_t__ context3; int /*<<< orphan*/ * context2; TYPE_1__ context_un; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct lpfc_iocbq*) ; 

int
FUNC5(struct lpfc_hba *phba, struct lpfc_iocbq *ctiocb)
{
	struct lpfc_dmabuf *buf_ptr;

	if (ctiocb->context_un.ndlp) {
		FUNC3(ctiocb->context_un.ndlp);
		ctiocb->context_un.ndlp = NULL;
	}
	if (ctiocb->context1) {
		buf_ptr = (struct lpfc_dmabuf *) ctiocb->context1;
		FUNC2(phba, buf_ptr->virt, buf_ptr->phys);
		FUNC0(buf_ptr);
		ctiocb->context1 = NULL;
	}
	if (ctiocb->context2) {
		FUNC1(phba, (struct lpfc_dmabuf *) ctiocb->context2);
		ctiocb->context2 = NULL;
	}

	if (ctiocb->context3) {
		buf_ptr = (struct lpfc_dmabuf *) ctiocb->context3;
		FUNC2(phba, buf_ptr->virt, buf_ptr->phys);
		FUNC0(buf_ptr);
		ctiocb->context1 = NULL;
	}
	FUNC4(phba, ctiocb);
	return 0;
}