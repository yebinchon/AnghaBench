#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sram_channel {scalar_t__ cmds_start; } ;
struct cx88_core {int pci_irqmask; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;
struct cx88_audio_buffer {int bpl; TYPE_1__ risc; } ;
struct TYPE_5__ {int num_periods; struct cx88_core* core; int /*<<< orphan*/  count; struct cx88_audio_buffer* buf; } ;
typedef  TYPE_2__ snd_cx88_card_t ;

/* Variables and functions */
 int AUD_INT_DN_RISCI1 ; 
 int AUD_INT_DN_RISCI2 ; 
 int AUD_INT_DN_SYNC ; 
 int AUD_INT_OPC_ERR ; 
 int GP_COUNT_CONTROL_RESET ; 
 int /*<<< orphan*/  MO_AUDD_GPCNTRL ; 
 int /*<<< orphan*/  MO_AUDD_LNGTH ; 
 int /*<<< orphan*/  MO_AUD_DMACNTRL ; 
 int /*<<< orphan*/  MO_AUD_INTMSK ; 
 int /*<<< orphan*/  MO_AUD_INTSTAT ; 
 int /*<<< orphan*/  MO_DEV_CNTRL2 ; 
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int PCI_INT_AUDINT ; 
 size_t SRAM_CH25 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,struct sram_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*,struct sram_channel*,int,int /*<<< orphan*/ ) ; 
 struct sram_channel* cx88_sram_channels ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC8(snd_cx88_card_t *chip)
{
	struct cx88_audio_buffer *buf = chip->buf;
	struct cx88_core *core=chip->core;
	struct sram_channel *audio_ch = &cx88_sram_channels[SRAM_CH25];

	/* Make sure RISC/FIFO are off before changing FIFO/RISC settings */
	FUNC3(MO_AUD_DMACNTRL, 0x11);

	/* setup fifo + format - out channel */
	FUNC2(chip->core, audio_ch, buf->bpl, buf->risc.dma);

	/* sets bpl size */
	FUNC6(MO_AUDD_LNGTH, buf->bpl);

	/* reset counter */
	FUNC6(MO_AUDD_GPCNTRL, GP_COUNT_CONTROL_RESET);
	FUNC0(&chip->count, 0);

	FUNC7(1, "Start audio DMA, %d B/line, %d lines/FIFO, %d periods, %d "
		"byte buffer\n", buf->bpl, FUNC4(audio_ch->cmds_start + 8)>>1,
		chip->num_periods, buf->bpl * chip->num_periods);

	/* Enables corresponding bits at AUD_INT_STAT */
	FUNC6(MO_AUD_INTMSK, AUD_INT_OPC_ERR | AUD_INT_DN_SYNC |
				AUD_INT_DN_RISCI2 | AUD_INT_DN_RISCI1);

	/* Clean any pending interrupt bits already set */
	FUNC6(MO_AUD_INTSTAT, ~0);

	/* enable audio irqs */
	FUNC5(MO_PCI_INTMSK, chip->core->pci_irqmask | PCI_INT_AUDINT);

	/* start dma */
	FUNC5(MO_DEV_CNTRL2, (1<<5)); /* Enables Risc Processor */
	FUNC5(MO_AUD_DMACNTRL, 0x11); /* audio downstream FIFO and RISC enable */

	if (debug)
		FUNC1(chip->core, audio_ch);

	return 0;
}