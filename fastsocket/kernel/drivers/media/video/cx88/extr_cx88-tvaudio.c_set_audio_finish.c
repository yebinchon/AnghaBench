
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mpeg; } ;
struct cx88_core {int last_change; TYPE_1__ board; } ;


 int AUD_BAUDRATE ;
 int AUD_CTL ;
 int AUD_I2SCNTL ;
 int AUD_I2SINPUTCNTL ;
 int AUD_I2SOUTPUTCNTL ;
 int AUD_RATE_THRES_DMD ;
 int AUD_SOFT_RESET ;
 int AUD_VOL_CTL ;
 int CX88_MPEG_BLACKBIRD ;
 int EN_DAC_ENABLE ;
 int EN_I2SOUT_ENABLE ;
 int SHADOW_AUD_VOL_CTL ;
 scalar_t__ always_analog ;
 int cx88_start_audio_dma (struct cx88_core*) ;
 int cx88_stop_audio_dma (struct cx88_core*) ;
 int cx_set (int ,int ) ;
 int cx_sread (int ) ;
 int cx_swrite (int ,int ,int) ;
 int cx_write (int ,int) ;
 int jiffies ;

__attribute__((used)) static void set_audio_finish(struct cx88_core *core, u32 ctl)
{
 u32 volume;


 cx88_stop_audio_dma(core);
 cx_write(AUD_RATE_THRES_DMD, 0x000000C0);
 cx88_start_audio_dma(core);

 if (core->board.mpeg & CX88_MPEG_BLACKBIRD) {
  cx_write(AUD_I2SINPUTCNTL, 4);
  cx_write(AUD_BAUDRATE, 1);

  cx_set(AUD_CTL, EN_I2SOUT_ENABLE);
  cx_write(AUD_I2SOUTPUTCNTL, 1);
  cx_write(AUD_I2SCNTL, 0);

 }
 if ((always_analog) || (!(core->board.mpeg & CX88_MPEG_BLACKBIRD))) {
  ctl |= EN_DAC_ENABLE;
  cx_write(AUD_CTL, ctl);
 }


 cx_write(AUD_SOFT_RESET, 0x0000);


 volume = cx_sread(SHADOW_AUD_VOL_CTL);
 cx_swrite(SHADOW_AUD_VOL_CTL, AUD_VOL_CTL, volume);

 core->last_change = jiffies;
}
