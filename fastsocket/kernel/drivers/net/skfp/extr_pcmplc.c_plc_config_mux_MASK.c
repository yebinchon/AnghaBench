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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MUX_WRAPB ; 
 int /*<<< orphan*/  PA ; 
 int /*<<< orphan*/  PB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PL_CNTRL_A ; 
 int /*<<< orphan*/  PL_CNTRL_B ; 
 int /*<<< orphan*/  PL_CONFIG_CNTRL ; 
 int /*<<< orphan*/  PL_SC_REM_LOOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SMT_DAS ; 

void FUNC3(struct s_smc *smc, int mux)
{
	if (smc->s.sas != SMT_DAS)
		return ;
	if (mux == MUX_WRAPB) {
		FUNC2(FUNC1(PA,PL_CNTRL_B),PL_CONFIG_CNTRL,PL_CONFIG_CNTRL) ;
		FUNC2(FUNC1(PA,PL_CNTRL_A),PL_SC_REM_LOOP,PL_SC_REM_LOOP) ;
	}
	else {
		FUNC0(FUNC1(PA,PL_CNTRL_B),PL_CONFIG_CNTRL) ;
		FUNC0(FUNC1(PA,PL_CNTRL_A),PL_SC_REM_LOOP) ;
	}
	FUNC0(FUNC1(PB,PL_CNTRL_B),PL_CONFIG_CNTRL) ;
	FUNC0(FUNC1(PB,PL_CNTRL_A),PL_SC_REM_LOOP) ;
}