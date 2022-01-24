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
 int /*<<< orphan*/  CIR_IRCON ; 
 int CIR_IRCON_RXEN ; 
 int CIR_IRCON_RXINV ; 
 int CIR_IRCON_SAMPLE_PERIOD_SEL ; 
 int CIR_IRCON_TXEN ; 
 int /*<<< orphan*/  CIR_IRSTS ; 
 int /*<<< orphan*/  CR_LOGICAL_DEV_EN ; 
 int /*<<< orphan*/  LOGICAL_DEV_CIR ; 
 int /*<<< orphan*/  LOGICAL_DEV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvt_dev*) ; 

__attribute__((used)) static void FUNC6(struct nvt_dev *nvt)
{
	/* set function enable flags */
	FUNC0(nvt, CIR_IRCON_TXEN | CIR_IRCON_RXEN |
			  CIR_IRCON_RXINV | CIR_IRCON_SAMPLE_PERIOD_SEL,
			  CIR_IRCON);

	FUNC3(nvt);

	/* enable the CIR logical device */
	FUNC4(nvt, LOGICAL_DEV_CIR);
	FUNC1(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);

	FUNC2(nvt);

	/* clear all pending interrupts */
	FUNC0(nvt, 0xff, CIR_IRSTS);

	/* enable interrupts */
	FUNC5(nvt);
}