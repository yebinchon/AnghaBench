
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sram_channel {scalar_t__ cmds_start; } ;
struct cx88_core {int pci_irqmask; } ;
struct TYPE_4__ {int dma; } ;
struct cx88_audio_buffer {int bpl; TYPE_1__ risc; } ;
struct TYPE_5__ {int num_periods; struct cx88_core* core; int count; struct cx88_audio_buffer* buf; } ;
typedef TYPE_2__ snd_cx88_card_t ;


 int AUD_INT_DN_RISCI1 ;
 int AUD_INT_DN_RISCI2 ;
 int AUD_INT_DN_SYNC ;
 int AUD_INT_OPC_ERR ;
 int GP_COUNT_CONTROL_RESET ;
 int MO_AUDD_GPCNTRL ;
 int MO_AUDD_LNGTH ;
 int MO_AUD_DMACNTRL ;
 int MO_AUD_INTMSK ;
 int MO_AUD_INTSTAT ;
 int MO_DEV_CNTRL2 ;
 int MO_PCI_INTMSK ;
 int PCI_INT_AUDINT ;
 size_t SRAM_CH25 ;
 int atomic_set (int *,int ) ;
 int cx88_sram_channel_dump (struct cx88_core*,struct sram_channel*) ;
 int cx88_sram_channel_setup (struct cx88_core*,struct sram_channel*,int,int ) ;
 struct sram_channel* cx88_sram_channels ;
 int cx_clear (int ,int) ;
 int cx_read (scalar_t__) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 scalar_t__ debug ;
 int dprintk (int,char*,int,int,int,int) ;

__attribute__((used)) static int _cx88_start_audio_dma(snd_cx88_card_t *chip)
{
 struct cx88_audio_buffer *buf = chip->buf;
 struct cx88_core *core=chip->core;
 struct sram_channel *audio_ch = &cx88_sram_channels[SRAM_CH25];


 cx_clear(MO_AUD_DMACNTRL, 0x11);


 cx88_sram_channel_setup(chip->core, audio_ch, buf->bpl, buf->risc.dma);


 cx_write(MO_AUDD_LNGTH, buf->bpl);


 cx_write(MO_AUDD_GPCNTRL, GP_COUNT_CONTROL_RESET);
 atomic_set(&chip->count, 0);

 dprintk(1, "Start audio DMA, %d B/line, %d lines/FIFO, %d periods, %d "
  "byte buffer\n", buf->bpl, cx_read(audio_ch->cmds_start + 8)>>1,
  chip->num_periods, buf->bpl * chip->num_periods);


 cx_write(MO_AUD_INTMSK, AUD_INT_OPC_ERR | AUD_INT_DN_SYNC |
    AUD_INT_DN_RISCI2 | AUD_INT_DN_RISCI1);


 cx_write(MO_AUD_INTSTAT, ~0);


 cx_set(MO_PCI_INTMSK, chip->core->pci_irqmask | PCI_INT_AUDINT);


 cx_set(MO_DEV_CNTRL2, (1<<5));
 cx_set(MO_AUD_DMACNTRL, 0x11);

 if (debug)
  cx88_sram_channel_dump(chip->core, audio_ch);

 return 0;
}
