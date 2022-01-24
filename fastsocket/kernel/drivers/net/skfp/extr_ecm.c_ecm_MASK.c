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
struct TYPE_2__ {int fddiSMTECMState; } ;
struct s_smc {TYPE_1__ mib; } ;

/* Variables and functions */
 int AFLAG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 char** ecm_events ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*,int) ; 
 int /*<<< orphan*/ * ecm_states ; 

void FUNC3(struct s_smc *smc, int event)
{
	int	state ;

	do {
		FUNC0("ECM : state %s%s",
			(smc->mib.fddiSMTECMState & AFLAG) ? "ACTIONS " : "",
			ecm_states[smc->mib.fddiSMTECMState & ~AFLAG]) ;
		FUNC0(" event %s\n",ecm_events[event],0) ;
		state = smc->mib.fddiSMTECMState ;
		FUNC1(smc,event) ;
		event = 0 ;
	} while (state != smc->mib.fddiSMTECMState) ;
	FUNC2(smc,(int)smc->mib.fddiSMTECMState) ;
}