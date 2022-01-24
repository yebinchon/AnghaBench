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
struct cpuidle_state {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct acpi_processor_cx {int /*<<< orphan*/  usage; } ;
struct acpi_processor {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 struct acpi_processor* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_processor_cx*) ; 
 scalar_t__ acpi_idle_suspend ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct acpi_processor_cx* FUNC3 (struct cpuidle_state*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_processor*,struct acpi_processor_cx*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  processors ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct cpuidle_device *dev,
			      struct cpuidle_state *state)
{
	ktime_t  kt1, kt2;
	s64 idle_time;
	struct acpi_processor *pr;
	struct acpi_processor_cx *cx = FUNC3(state);

	pr = FUNC0(processors);

	if (FUNC10(!pr))
		return 0;

	FUNC8();

	/* Do not access any ACPI IO ports in suspend path */
	if (acpi_idle_suspend) {
		FUNC9();
		FUNC2();
		return 0;
	}

	FUNC7(pr, cx, 1);
	kt1 = FUNC4();
	FUNC1(cx);
	kt2 = FUNC4();
	idle_time =  FUNC6(FUNC5(kt2, kt1));

	FUNC9();
	cx->usage++;
	FUNC7(pr, cx, 0);

	return idle_time;
}