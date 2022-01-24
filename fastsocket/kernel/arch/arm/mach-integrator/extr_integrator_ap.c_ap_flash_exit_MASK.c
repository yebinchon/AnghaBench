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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EBI_CSR1 ; 
 int /*<<< orphan*/  EBI_LOCK ; 
 int INTEGRATOR_EBI_WRITE_ENABLE ; 
 int INTEGRATOR_SC_CTRL_nFLVPPEN ; 
 int INTEGRATOR_SC_CTRL_nFLWP ; 
 int /*<<< orphan*/  SC_CTRLC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	u32 tmp;

	FUNC1(INTEGRATOR_SC_CTRL_nFLVPPEN | INTEGRATOR_SC_CTRL_nFLWP, SC_CTRLC);

	tmp = FUNC0(EBI_CSR1) & ~INTEGRATOR_EBI_WRITE_ENABLE;
	FUNC1(tmp, EBI_CSR1);

	if (FUNC0(EBI_CSR1) & INTEGRATOR_EBI_WRITE_ENABLE) {
		FUNC1(0xa05f, EBI_LOCK);
		FUNC1(tmp, EBI_CSR1);
		FUNC1(0, EBI_LOCK);
	}
}