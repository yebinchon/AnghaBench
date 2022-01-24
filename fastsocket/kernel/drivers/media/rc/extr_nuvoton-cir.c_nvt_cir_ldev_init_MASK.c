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
typedef  int u8 ;
struct nvt_dev {int cir_addr; int cir_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_CIR_BASE_ADDR_HI ; 
 int /*<<< orphan*/  CR_CIR_BASE_ADDR_LO ; 
 int /*<<< orphan*/  CR_CIR_IRQ_RSRC ; 
 int /*<<< orphan*/  CR_LOGICAL_DEV_EN ; 
 int /*<<< orphan*/  CR_OUTPUT_PIN_SEL ; 
 int /*<<< orphan*/  LOGICAL_DEV_CIR ; 
 int LOGICAL_DEV_ENABLE ; 
 int OUTPUT_ENABLE_CIR ; 
 int OUTPUT_ENABLE_CIRWB ; 
 int OUTPUT_PIN_SEL_MASK ; 
 int FUNC0 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nvt_dev *nvt)
{
	u8 val;

	/* output pin selection (Pin95=CIRRX, Pin96=CIRTX1, WB enabled */
	val = FUNC0(nvt, CR_OUTPUT_PIN_SEL);
	val &= OUTPUT_PIN_SEL_MASK;
	val |= (OUTPUT_ENABLE_CIR | OUTPUT_ENABLE_CIRWB);
	FUNC1(nvt, val, CR_OUTPUT_PIN_SEL);

	/* Select CIR logical device and enable */
	FUNC3(nvt, LOGICAL_DEV_CIR);
	FUNC1(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);

	FUNC1(nvt, nvt->cir_addr >> 8, CR_CIR_BASE_ADDR_HI);
	FUNC1(nvt, nvt->cir_addr & 0xff, CR_CIR_BASE_ADDR_LO);

	FUNC1(nvt, nvt->cir_irq, CR_CIR_IRQ_RSRC);

	FUNC2("CIR initialized, base io port address: 0x%lx, irq: %d",
		nvt->cir_addr, nvt->cir_irq);
}