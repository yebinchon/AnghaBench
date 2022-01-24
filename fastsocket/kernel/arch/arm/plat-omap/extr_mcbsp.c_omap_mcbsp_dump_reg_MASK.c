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
struct omap_mcbsp {int /*<<< orphan*/  dev; int /*<<< orphan*/  io_base; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRR1 ; 
 int /*<<< orphan*/  DRR2 ; 
 int /*<<< orphan*/  DXR1 ; 
 int /*<<< orphan*/  DXR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCR0 ; 
 int /*<<< orphan*/  RCR1 ; 
 int /*<<< orphan*/  RCR2 ; 
 int /*<<< orphan*/  SPCR1 ; 
 int /*<<< orphan*/  SPCR2 ; 
 int /*<<< orphan*/  SRGR1 ; 
 int /*<<< orphan*/  SRGR2 ; 
 int /*<<< orphan*/  XCR1 ; 
 int /*<<< orphan*/  XCR2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct omap_mcbsp* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u8 id)
{
	struct omap_mcbsp *mcbsp = FUNC2(id);

	FUNC1(mcbsp->dev, "**** McBSP%d regs ****\n", mcbsp->id);
	FUNC1(mcbsp->dev, "DRR2:  0x%04x\n",
			FUNC0(mcbsp->io_base, DRR2));
	FUNC1(mcbsp->dev, "DRR1:  0x%04x\n",
			FUNC0(mcbsp->io_base, DRR1));
	FUNC1(mcbsp->dev, "DXR2:  0x%04x\n",
			FUNC0(mcbsp->io_base, DXR2));
	FUNC1(mcbsp->dev, "DXR1:  0x%04x\n",
			FUNC0(mcbsp->io_base, DXR1));
	FUNC1(mcbsp->dev, "SPCR2: 0x%04x\n",
			FUNC0(mcbsp->io_base, SPCR2));
	FUNC1(mcbsp->dev, "SPCR1: 0x%04x\n",
			FUNC0(mcbsp->io_base, SPCR1));
	FUNC1(mcbsp->dev, "RCR2:  0x%04x\n",
			FUNC0(mcbsp->io_base, RCR2));
	FUNC1(mcbsp->dev, "RCR1:  0x%04x\n",
			FUNC0(mcbsp->io_base, RCR1));
	FUNC1(mcbsp->dev, "XCR2:  0x%04x\n",
			FUNC0(mcbsp->io_base, XCR2));
	FUNC1(mcbsp->dev, "XCR1:  0x%04x\n",
			FUNC0(mcbsp->io_base, XCR1));
	FUNC1(mcbsp->dev, "SRGR2: 0x%04x\n",
			FUNC0(mcbsp->io_base, SRGR2));
	FUNC1(mcbsp->dev, "SRGR1: 0x%04x\n",
			FUNC0(mcbsp->io_base, SRGR1));
	FUNC1(mcbsp->dev, "PCR0:  0x%04x\n",
			FUNC0(mcbsp->io_base, PCR0));
	FUNC1(mcbsp->dev, "***********************\n");
}