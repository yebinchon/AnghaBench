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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int fddiSMTBypassPresent; } ;
struct TYPE_3__ {int /*<<< orphan*/  sas; } ;
struct s_smc {TYPE_2__ mib; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B0_DAS ; 
 int DAS_AVAIL ; 
 int DAS_BYP_ST ; 
 int /*<<< orphan*/  SMT_DAS ; 
 int /*<<< orphan*/  SMT_SAS ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*,int /*<<< orphan*/ *) ; 

void FUNC4(struct s_smc *smc, u_char *mac_addr)
{
	FUNC1(smc) ;
	FUNC3(smc,mac_addr) ;

	if (!(FUNC2(FUNC0(B0_DAS)) & DAS_AVAIL))
		smc->s.sas = SMT_SAS ;	/* Single att. station */
	else
		smc->s.sas = SMT_DAS ;	/* Dual att. station */

	if (!(FUNC2(FUNC0(B0_DAS)) & DAS_BYP_ST))
		smc->mib.fddiSMTBypassPresent = 0 ;
		/* without opt. bypass */
	else
		smc->mib.fddiSMTBypassPresent = 1 ;
		/* with opt. bypass */
}