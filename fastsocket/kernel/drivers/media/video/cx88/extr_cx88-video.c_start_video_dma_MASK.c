#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cx88_dmaqueue {int count; } ;
struct cx88_core {int pci_irqmask; } ;
struct TYPE_5__ {int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;
struct cx88_buffer {TYPE_3__* fmt; TYPE_2__ vb; TYPE_1__ risc; int /*<<< orphan*/  bpl; } ;
struct cx8800_dev {struct cx88_core* core; } ;
struct TYPE_6__ {int cxformat; } ;

/* Variables and functions */
 int ColorFormatGamma ; 
 int GP_COUNT_CONTROL_RESET ; 
 int /*<<< orphan*/  MO_COLOR_CTRL ; 
 int /*<<< orphan*/  MO_DEV_CNTRL2 ; 
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int /*<<< orphan*/  MO_VIDY_GPCNTRL ; 
 int /*<<< orphan*/  MO_VID_DMACNTRL ; 
 int /*<<< orphan*/  MO_VID_INTMSK ; 
 int PCI_INT_VIDINT ; 
 size_t SRAM_CH21 ; 
 int /*<<< orphan*/  VID_CAPTURE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cx88_sram_channels ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct cx8800_dev    *dev,
			   struct cx88_dmaqueue *q,
			   struct cx88_buffer   *buf)
{
	struct cx88_core *core = dev->core;

	/* setup fifo + format */
	FUNC1(core, &cx88_sram_channels[SRAM_CH21],
				buf->bpl, buf->risc.dma);
	FUNC0(core, buf->vb.width, buf->vb.height, buf->vb.field);
	FUNC3(MO_COLOR_CTRL, buf->fmt->cxformat | ColorFormatGamma);

	/* reset counter */
	FUNC3(MO_VIDY_GPCNTRL,GP_COUNT_CONTROL_RESET);
	q->count = 1;

	/* enable irqs */
	FUNC2(MO_PCI_INTMSK, core->pci_irqmask | PCI_INT_VIDINT);

	/* Enables corresponding bits at PCI_INT_STAT:
		bits 0 to 4: video, audio, transport stream, VIP, Host
		bit 7: timer
		bits 8 and 9: DMA complete for: SRC, DST
		bits 10 and 11: BERR signal asserted for RISC: RD, WR
		bits 12 to 15: BERR signal asserted for: BRDG, SRC, DST, IPB
	 */
	FUNC2(MO_VID_INTMSK, 0x0f0011);

	/* enable capture */
	FUNC2(VID_CAPTURE_CONTROL,0x06);

	/* start dma */
	FUNC2(MO_DEV_CNTRL2, (1<<5));
	FUNC2(MO_VID_DMACNTRL, 0x11); /* Planar Y and packed FIFO and RISC enable */

	return 0;
}