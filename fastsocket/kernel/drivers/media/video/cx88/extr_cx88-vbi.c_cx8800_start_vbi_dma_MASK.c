#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cx88_dmaqueue {int count; } ;
struct cx88_core {int pci_irqmask; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  width; } ;
struct cx88_buffer {TYPE_2__ risc; TYPE_1__ vb; } ;
struct cx8800_dev {struct cx88_core* core; } ;

/* Variables and functions */
 int GP_COUNT_CONTROL_RESET ; 
 int /*<<< orphan*/  MO_DEV_CNTRL2 ; 
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int /*<<< orphan*/  MO_VBI_GPCNTRL ; 
 int /*<<< orphan*/  MO_VBOS_CONTROL ; 
 int /*<<< orphan*/  MO_VID_DMACNTRL ; 
 int /*<<< orphan*/  MO_VID_INTMSK ; 
 int PCI_INT_VIDINT ; 
 size_t SRAM_CH24 ; 
 int /*<<< orphan*/  VID_CAPTURE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cx88_sram_channels ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct cx8800_dev    *dev,
			 struct cx88_dmaqueue *q,
			 struct cx88_buffer   *buf)
{
	struct cx88_core *core = dev->core;

	/* setup fifo + format */
	FUNC0(dev->core, &cx88_sram_channels[SRAM_CH24],
				buf->vb.width, buf->risc.dma);

	FUNC2(MO_VBOS_CONTROL, ( (1 << 18) |  // comb filter delay fixup
				    (1 << 15) |  // enable vbi capture
				    (1 << 11) ));

	/* reset counter */
	FUNC2(MO_VBI_GPCNTRL, GP_COUNT_CONTROL_RESET);
	q->count = 1;

	/* enable irqs */
	FUNC1(MO_PCI_INTMSK, core->pci_irqmask | PCI_INT_VIDINT);
	FUNC1(MO_VID_INTMSK, 0x0f0088);

	/* enable capture */
	FUNC1(VID_CAPTURE_CONTROL,0x18);

	/* start dma */
	FUNC1(MO_DEV_CNTRL2, (1<<5));
	FUNC1(MO_VID_DMACNTRL, 0x88);

	return 0;
}