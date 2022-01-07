
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ ac97; int has_audio; } ;
struct TYPE_5__ {int xclk; } ;
struct em28xx {int volume; int ctl_aoutput; scalar_t__ mute; TYPE_2__ audio_mode; TYPE_1__ board; } ;
struct TYPE_7__ {int mux; int reg; } ;


 int AC97_EXT_AUD_CTRL ;
 int AC97_PCM_IN_SRATE ;
 int AC97_POWER_DOWN_CTRL ;
 int AC97_RECORD_SELECT ;
 int ARRAY_SIZE (TYPE_3__*) ;
 int EM28XX_AOUT_PCM_IN ;
 scalar_t__ EM28XX_NO_AC97 ;
 int EM28XX_R0F_XCLK ;
 int EM28XX_XCLK_AUDIO_UNMUTE ;
 int ac97_return_record_select (int) ;
 int em28xx_set_audio_source (struct em28xx*) ;
 int em28xx_warn (char*,int ) ;
 int em28xx_write_ac97 (struct em28xx*,int ,int) ;
 int em28xx_write_reg (struct em28xx*,int ,int) ;
 int msleep (int) ;
 TYPE_3__* outputs ;

int em28xx_audio_analog_set(struct em28xx *dev)
{
 int ret, i;
 u8 xclk;

 if (!dev->audio_mode.has_audio)
  return 0;




 if (dev->audio_mode.ac97 != EM28XX_NO_AC97) {

  for (i = 0; i < ARRAY_SIZE(outputs); i++) {
   ret = em28xx_write_ac97(dev, outputs[i].reg, 0x8000);
   if (ret < 0)
    em28xx_warn("couldn't setup AC97 register %d\n",
         outputs[i].reg);
  }
 }

 xclk = dev->board.xclk & 0x7f;
 if (!dev->mute)
  xclk |= EM28XX_XCLK_AUDIO_UNMUTE;

 ret = em28xx_write_reg(dev, EM28XX_R0F_XCLK, xclk);
 if (ret < 0)
  return ret;
 msleep(10);


 ret = em28xx_set_audio_source(dev);


 if (dev->audio_mode.ac97 != EM28XX_NO_AC97) {
  int vol;

  em28xx_write_ac97(dev, AC97_POWER_DOWN_CTRL, 0x4200);
  em28xx_write_ac97(dev, AC97_EXT_AUD_CTRL, 0x0031);
  em28xx_write_ac97(dev, AC97_PCM_IN_SRATE, 0xbb80);


  vol = (0x1f - dev->volume) | ((0x1f - dev->volume) << 8);


  if (dev->mute)
   vol |= 0x8000;


  for (i = 0; i < ARRAY_SIZE(outputs); i++) {
   if (dev->ctl_aoutput & outputs[i].mux)
    ret = em28xx_write_ac97(dev, outputs[i].reg,
       vol);
   if (ret < 0)
    em28xx_warn("couldn't setup AC97 register %d\n",
         outputs[i].reg);
  }

  if (dev->ctl_aoutput & EM28XX_AOUT_PCM_IN) {
   int sel = ac97_return_record_select(dev->ctl_aoutput);



   sel |= (sel << 8);

   em28xx_write_ac97(dev, AC97_RECORD_SELECT, sel);
  }
 }

 return ret;
}
