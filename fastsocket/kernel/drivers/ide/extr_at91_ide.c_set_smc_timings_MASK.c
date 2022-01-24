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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;

/* Variables and functions */
 unsigned long AT91_SMC_BAT_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 unsigned long AT91_SMC_EXNWMODE_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 unsigned long FUNC2 (scalar_t__ const) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (scalar_t__ const) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (scalar_t__ const) ; 
 unsigned long FUNC7 (scalar_t__ const) ; 
 unsigned long FUNC8 (scalar_t__ const) ; 
 unsigned long FUNC9 (scalar_t__ const) ; 
 unsigned long FUNC10 (scalar_t__ const) ; 
 unsigned long FUNC11 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const) ; 
 unsigned long AT91_SMC_READMODE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const) ; 
 unsigned long FUNC14 (scalar_t__ const) ; 
 unsigned long AT91_SMC_WRITEMODE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC16(const u8 chipselect, const u16 cycle,
			    const u16 setup, const u16 pulse,
			    const u16 data_float, int use_iordy)
{
	unsigned long mode = AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
			     AT91_SMC_BAT_SELECT;

	/* disable or enable waiting for IORDY signal */
	if (use_iordy)
		mode |= AT91_SMC_EXNWMODE_READY;

	/* add data float cycles if needed */
	if (data_float)
		mode |= FUNC14(data_float);

	FUNC15(FUNC1(chipselect), mode);

	/* setup timings in SMC */
	FUNC15(FUNC13(chipselect), FUNC11(setup) |
						   FUNC5(0) |
						   FUNC8(setup) |
						   FUNC3(0));
	FUNC15(FUNC12(chipselect), FUNC10(pulse) |
						   FUNC4(cycle) |
						   FUNC7(pulse) |
						   FUNC2(cycle));
	FUNC15(FUNC0(chipselect), FUNC9(cycle) |
						   FUNC6(cycle));
}