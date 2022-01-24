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
struct TYPE_2__ {scalar_t__ sas; } ;
struct s_smc {TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B0_DAS ; 
#define  BP_DEINSERT 129 
#define  BP_INSERT 128 
 int /*<<< orphan*/  DAS_BYP_INS ; 
 int /*<<< orphan*/  DAS_BYP_RMV ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ SMT_DAS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct s_smc *smc, int mode)
{
	FUNC1(1,"ECM : sm_pm_bypass_req(%s)\n",(mode == BP_INSERT) ?
					"BP_INSERT" : "BP_DEINSERT",0) ;

	if (smc->s.sas != SMT_DAS)
		return ;

#ifdef	PCI
	switch(mode) {
	case BP_INSERT :
		outp(ADDR(B0_DAS),DAS_BYP_INS) ;	/* insert station */
		break ;
	case BP_DEINSERT :
		outp(ADDR(B0_DAS),DAS_BYP_RMV) ;	/* bypass station */
		break ;
	}
#endif
}