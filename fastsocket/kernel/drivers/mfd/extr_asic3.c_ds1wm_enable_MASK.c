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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct asic3 {int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 size_t ASIC3_CLOCK_EX0 ; 
 size_t ASIC3_CLOCK_EX1 ; 
 size_t ASIC3_CLOCK_OWM ; 
 int /*<<< orphan*/  ASIC3_EXTCF_OWM_EN ; 
 int /*<<< orphan*/  ASIC3_EXTCF_OWM_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXTCF ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  SELECT ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct asic3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct asic3* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct asic3 *asic = FUNC3(pdev->dev.parent);

	/* Turn on external clocks and the OWM clock */
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_EX0]);
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_EX1]);
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_OWM]);
	FUNC4(1);

	/* Reset and enable DS1WM */
	FUNC2(asic, FUNC0(EXTCF, RESET),
			   ASIC3_EXTCF_OWM_RESET, 1);
	FUNC4(1);
	FUNC2(asic, FUNC0(EXTCF, RESET),
			   ASIC3_EXTCF_OWM_RESET, 0);
	FUNC4(1);
	FUNC2(asic, FUNC0(EXTCF, SELECT),
			   ASIC3_EXTCF_OWM_EN, 1);
	FUNC4(1);

	return 0;
}