
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cx88_core {int dummy; } ;
struct TYPE_3__ {struct cx88_core* core; } ;
typedef TYPE_1__ snd_cx88_card_t ;


 int AUD_INT_DN_RISCI1 ;
 int AUD_INT_DN_RISCI2 ;
 int AUD_INT_DN_SYNC ;
 int AUD_INT_OPC_ERR ;
 int MO_AUD_DMACNTRL ;
 int MO_AUD_INTMSK ;
 int MO_PCI_INTMSK ;
 int PCI_INT_AUDINT ;
 size_t SRAM_CH25 ;
 int cx88_sram_channel_dump (struct cx88_core*,int *) ;
 int * cx88_sram_channels ;
 int cx_clear (int ,int) ;
 scalar_t__ debug ;
 int dprintk (int,char*) ;

__attribute__((used)) static int _cx88_stop_audio_dma(snd_cx88_card_t *chip)
{
 struct cx88_core *core=chip->core;
 dprintk(1, "Stopping audio DMA\n");


 cx_clear(MO_AUD_DMACNTRL, 0x11);


 cx_clear(MO_PCI_INTMSK, PCI_INT_AUDINT);
 cx_clear(MO_AUD_INTMSK, AUD_INT_OPC_ERR | AUD_INT_DN_SYNC |
    AUD_INT_DN_RISCI2 | AUD_INT_DN_RISCI1);

 if (debug)
  cx88_sram_channel_dump(chip->core, &cx88_sram_channels[SRAM_CH25]);

 return 0;
}
