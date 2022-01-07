
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7134_dev {size_t board; TYPE_1__* pci; } ;
struct TYPE_4__ {int audio_clock; } ;
struct TYPE_3__ {int device; } ;





 int SAA7134_AUDIO_CLOCK0 ;
 int SAA7134_AUDIO_CLOCK1 ;
 int SAA7134_AUDIO_CLOCK2 ;
 int SAA7134_AUDIO_PLL_CTRL ;
 int SAA7134_NICAM_ERROR_HIGH ;
 int SAA7134_NICAM_ERROR_LOW ;
 int UNSET ;
 int audio_clock_override ;
 int need_resched () ;
 TYPE_2__* saa7134_boards ;
 int saa_dsp_writel (struct saa7134_dev*,int,int) ;
 int saa_writeb (int ,int) ;
 int saa_writel (int,int) ;
 int schedule () ;
 int udelay (int) ;

void saa7134_tvaudio_init(struct saa7134_dev *dev)
{
 int clock = saa7134_boards[dev->board].audio_clock;

 if (UNSET != audio_clock_override)
  clock = audio_clock_override;

 switch (dev->pci->device) {
 case 129:

  saa_writeb(SAA7134_AUDIO_PLL_CTRL, 0x00);
  if (need_resched())
   schedule();
  else
   udelay(10);

  saa_writeb(SAA7134_AUDIO_CLOCK0, clock & 0xff);
  saa_writeb(SAA7134_AUDIO_CLOCK1, (clock >> 8) & 0xff);
  saa_writeb(SAA7134_AUDIO_CLOCK2, (clock >> 16) & 0xff);

  saa_writeb(SAA7134_AUDIO_PLL_CTRL, 0x01);
  saa_writeb(SAA7134_NICAM_ERROR_LOW, 0x14);
  saa_writeb(SAA7134_NICAM_ERROR_HIGH, 0x50);
  break;
 case 130:
 case 128:
  saa_writel(0x598 >> 2, clock);
  saa_dsp_writel(dev, 0x474 >> 2, 0x00);
  saa_dsp_writel(dev, 0x450 >> 2, 0x00);
 }
}
