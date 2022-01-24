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
struct cx88_core {int dummy; } ;
struct cx8802_dev {struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int /*<<< orphan*/  MO_TS_DMACNTRL ; 
 int /*<<< orphan*/  MO_TS_INTMSK ; 
 int PCI_INT_TSINT ; 
 int /*<<< orphan*/  TS_GEN_CNTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static int FUNC3(struct cx8802_dev *dev)
{
	struct cx88_core *core = dev->core;
	FUNC2( 1, "cx8802_stop_dma\n" );

	/* stop dma */
	FUNC0(MO_TS_DMACNTRL, 0x11);

	/* disable irqs */
	FUNC0(MO_PCI_INTMSK, PCI_INT_TSINT);
	FUNC0(MO_TS_INTMSK, 0x1f0011);

	/* Reset the controller */
	FUNC1(TS_GEN_CNTRL, 0xcd);
	return 0;
}