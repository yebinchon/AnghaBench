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
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_INTR_MOUSE_IRQ_BIT ; 
 int /*<<< orphan*/  CIR_WAKE_ENABLE_BIT ; 
 int /*<<< orphan*/  CIR_WAKE_IRCON ; 
 int CIR_WAKE_IRCON_MODE0 ; 
 int CIR_WAKE_IRCON_R ; 
 int CIR_WAKE_IRCON_RXEN ; 
 int CIR_WAKE_IRCON_RXINV ; 
 int CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL ; 
 int /*<<< orphan*/  CIR_WAKE_IREN ; 
 int /*<<< orphan*/  CIR_WAKE_IRSTS ; 
 int /*<<< orphan*/  CR_ACPI_CIR_WAKE ; 
 int /*<<< orphan*/  CR_ACPI_IRQ_EVENTS ; 
 int /*<<< orphan*/  CR_ACPI_IRQ_EVENTS2 ; 
 int /*<<< orphan*/  CR_LOGICAL_DEV_EN ; 
 int /*<<< orphan*/  LOGICAL_DEV_ACPI ; 
 int /*<<< orphan*/  LOGICAL_DEV_CIR_WAKE ; 
 int /*<<< orphan*/  LOGICAL_DEV_ENABLE ; 
 int /*<<< orphan*/  PME_INTR_CIR_PASS_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nvt_dev *nvt)
{
	FUNC3(nvt);

	FUNC4(nvt, LOGICAL_DEV_ACPI);
	FUNC5(nvt, CIR_WAKE_ENABLE_BIT, CR_ACPI_CIR_WAKE);
	FUNC5(nvt, CIR_INTR_MOUSE_IRQ_BIT, CR_ACPI_IRQ_EVENTS);
	FUNC5(nvt, PME_INTR_CIR_PASS_BIT, CR_ACPI_IRQ_EVENTS2);

	FUNC4(nvt, LOGICAL_DEV_CIR_WAKE);
	FUNC1(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);

	FUNC2(nvt);

	FUNC0(nvt, CIR_WAKE_IRCON_MODE0 | CIR_WAKE_IRCON_RXEN |
			       CIR_WAKE_IRCON_R | CIR_WAKE_IRCON_RXINV |
			       CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL,
			       CIR_WAKE_IRCON);
	FUNC0(nvt, 0xff, CIR_WAKE_IRSTS);
	FUNC0(nvt, 0, CIR_WAKE_IREN);
}