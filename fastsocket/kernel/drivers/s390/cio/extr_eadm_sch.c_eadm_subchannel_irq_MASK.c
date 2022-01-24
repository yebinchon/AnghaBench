#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct eadm_scsw {int stctl; int eswf; int fctl; scalar_t__ aob; } ;
struct TYPE_7__ {struct eadm_scsw eadm; } ;
struct TYPE_8__ {TYPE_1__ scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct TYPE_9__ {scalar_t__ r; } ;
struct TYPE_10__ {TYPE_3__ erw; } ;
struct TYPE_11__ {TYPE_4__ eadm; } ;
struct irb {TYPE_5__ esw; } ;
struct eadm_private {scalar_t__ state; } ;
struct aob {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  irb; } ;

/* Variables and functions */
 scalar_t__ EADM_BUSY ; 
 scalar_t__ EADM_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct irb*,int) ; 
 scalar_t__ EADM_NOT_OPER ; 
 int EIO ; 
 int ETIMEDOUT ; 
 TYPE_6__ S390_lowcore ; 
 int /*<<< orphan*/  SCH_TODO_EVAL ; 
 int SCSW_FCTL_CLEAR_FUNC ; 
 int SCSW_STCTL_ALERT_STATUS ; 
 int SCSW_STCTL_STATUS_PEND ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel*,int /*<<< orphan*/ ) ; 
 struct eadm_private* FUNC4 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC5 (struct aob*,int) ; 

__attribute__((used)) static void FUNC6(struct subchannel *sch)
{
	struct eadm_private *private = FUNC4(sch);
	struct eadm_scsw *scsw = &sch->schib.scsw.eadm;
	struct irb *irb = (struct irb *)&S390_lowcore.irb;
	int error = 0;

	FUNC0(6, "irq");
	FUNC1(6, irb, sizeof(*irb));

	if ((scsw->stctl & (SCSW_STCTL_ALERT_STATUS | SCSW_STCTL_STATUS_PEND))
	    && scsw->eswf == 1 && irb->esw.eadm.erw.r)
		error = -EIO;

	if (scsw->fctl & SCSW_FCTL_CLEAR_FUNC)
		error = -ETIMEDOUT;

	FUNC3(sch, 0);

	if (private->state != EADM_BUSY) {
		FUNC0(1, "irq unsol");
		FUNC1(1, irb, sizeof(*irb));
		private->state = EADM_NOT_OPER;
		FUNC2(sch, SCH_TODO_EVAL);
		return;
	}
	FUNC5((struct aob *)(unsigned long)scsw->aob, error);
	private->state = EADM_IDLE;
}