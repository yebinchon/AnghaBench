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

/* Variables and functions */
 int MIPS_CPU_IPI_IRQ ; 
 int /*<<< orphan*/  cpu_has_vint ; 
 int /*<<< orphan*/  cpu_ipi_irq ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/  ipi_irq_dispatch ; 
 int /*<<< orphan*/  irq_ipi ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(unsigned int nvpe)
{
	if (nvpe < 1)
		return;

	if (!cpu_has_vint)
		FUNC0("SMTC Kernel requires Vectored Interrupt support");

	FUNC2(MIPS_CPU_IPI_IRQ, ipi_irq_dispatch);

	FUNC3(cpu_ipi_irq, &irq_ipi, (0x100 << MIPS_CPU_IPI_IRQ));

	FUNC1(cpu_ipi_irq, handle_percpu_irq);
}