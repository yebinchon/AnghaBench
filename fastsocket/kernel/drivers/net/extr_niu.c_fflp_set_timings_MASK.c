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
typedef  int u64 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int DEFAULT_FCRAMRATIO ; 
 int DEFAULT_FCRAM_REFRESH_MAX ; 
 int DEFAULT_FCRAM_REFRESH_MIN ; 
 int /*<<< orphan*/  FCRAM_REF_TMR ; 
 int FCRAM_REF_TMR_MAX ; 
 int FCRAM_REF_TMR_MAX_SHIFT ; 
 int FCRAM_REF_TMR_MIN ; 
 int FCRAM_REF_TMR_MIN_SHIFT ; 
 int /*<<< orphan*/  FFLP_CFG_1 ; 
 int FFLP_CFG_1_FCRAMRATIO_SHIFT ; 
 int FFLP_CFG_1_FFLPINITDONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct niu *np)
{
	u64 val = FUNC0(FFLP_CFG_1);

	val &= ~FFLP_CFG_1_FFLPINITDONE;
	val |= (DEFAULT_FCRAMRATIO << FFLP_CFG_1_FCRAMRATIO_SHIFT);
	FUNC1(FFLP_CFG_1, val);

	val = FUNC0(FFLP_CFG_1);
	val |= FFLP_CFG_1_FFLPINITDONE;
	FUNC1(FFLP_CFG_1, val);

	val = FUNC0(FCRAM_REF_TMR);
	val &= ~(FCRAM_REF_TMR_MAX | FCRAM_REF_TMR_MIN);
	val |= (DEFAULT_FCRAM_REFRESH_MAX << FCRAM_REF_TMR_MAX_SHIFT);
	val |= (DEFAULT_FCRAM_REFRESH_MIN << FCRAM_REF_TMR_MIN_SHIFT);
	FUNC1(FCRAM_REF_TMR, val);
}