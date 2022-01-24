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
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_IPI_mask ) (struct cpumask const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* send_IPI_allbutself ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CALL_FUNCTION_VECTOR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* apic ; 
 int /*<<< orphan*/  cpu_callout_mask ; 
 struct cpumask const* cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 scalar_t__ FUNC3 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cpumask const*,int /*<<< orphan*/ ) ; 

void FUNC9(const struct cpumask *mask)
{
	cpumask_var_t allbutself;

	if (!FUNC0(&allbutself, GFP_ATOMIC)) {
		apic->send_IPI_mask(mask, CALL_FUNCTION_VECTOR);
		return;
	}

	FUNC2(allbutself, cpu_online_mask);
	FUNC1(FUNC5(), allbutself);

	if (FUNC3(mask, allbutself) &&
	    FUNC3(cpu_online_mask, cpu_callout_mask))
		apic->send_IPI_allbutself(CALL_FUNCTION_VECTOR);
	else
		apic->send_IPI_mask(mask, CALL_FUNCTION_VECTOR);

	FUNC4(allbutself);
}