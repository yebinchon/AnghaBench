
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int has_audio; int i2s_3rates; int i2s_5rates; int ac97; int ac97_vendor_id; int ac97_feat; } ;
struct em28xx {scalar_t__ chip_id; int has_alsa_audio; TYPE_1__ audio_mode; scalar_t__ has_audio_class; } ;


 int AC97_RESET ;
 int AC97_VENDOR_ID1 ;
 int AC97_VENDOR_ID2 ;
 scalar_t__ CHIP_ID_EM2870 ;
 scalar_t__ CHIP_ID_EM2874 ;



 int EM28XX_CHIPCFG_AC97 ;
 int EM28XX_CHIPCFG_AUDIOMASK ;
 int EM28XX_CHIPCFG_I2S_3_SAMPRATES ;
 int EM28XX_CHIPCFG_I2S_5_SAMPRATES ;

 int EM28XX_R00_CHIPCFG ;
 int em28xx_audio_analog_set (struct em28xx*) ;
 int em28xx_info (char*,...) ;
 int em28xx_read_ac97 (struct em28xx*,int ) ;
 int em28xx_read_reg (struct em28xx*,int ) ;
 int em28xx_warn (char*,...) ;

int em28xx_audio_setup(struct em28xx *dev)
{
 int vid1, vid2, feat, cfg;
 u32 vid;

 if (dev->chip_id == CHIP_ID_EM2870 || dev->chip_id == CHIP_ID_EM2874) {

  dev->audio_mode.has_audio = 0;
  dev->has_audio_class = 0;
  dev->has_alsa_audio = 0;
  return 0;
 }


 if (!dev->has_audio_class)
  dev->has_alsa_audio = 1;

 dev->audio_mode.has_audio = 1;


 cfg = em28xx_read_reg(dev, EM28XX_R00_CHIPCFG);
 em28xx_info("Config register raw data: 0x%02x\n", cfg);
 if (cfg < 0) {

  cfg = EM28XX_CHIPCFG_AC97;
 } else if ((cfg & EM28XX_CHIPCFG_AUDIOMASK) == 0x00) {

  dev->has_alsa_audio = 0;
  dev->audio_mode.has_audio = 0;
  return 0;
 } else if ((cfg & EM28XX_CHIPCFG_AUDIOMASK) ==
     EM28XX_CHIPCFG_I2S_3_SAMPRATES) {
  em28xx_info("I2S Audio (3 sample rates)\n");
  dev->audio_mode.i2s_3rates = 1;
 } else if ((cfg & EM28XX_CHIPCFG_AUDIOMASK) ==
     EM28XX_CHIPCFG_I2S_5_SAMPRATES) {
  em28xx_info("I2S Audio (5 sample rates)\n");
  dev->audio_mode.i2s_5rates = 1;
 }

 if ((cfg & EM28XX_CHIPCFG_AUDIOMASK) != EM28XX_CHIPCFG_AC97) {

  dev->audio_mode.ac97 = 128;
  goto init_audio;
 }

 dev->audio_mode.ac97 = 130;

 vid1 = em28xx_read_ac97(dev, AC97_VENDOR_ID1);
 if (vid1 < 0) {





  em28xx_warn("AC97 chip type couldn't be determined\n");
  dev->audio_mode.ac97 = 128;
  dev->has_alsa_audio = 0;
  dev->audio_mode.has_audio = 0;
  goto init_audio;
 }

 vid2 = em28xx_read_ac97(dev, AC97_VENDOR_ID2);
 if (vid2 < 0)
  goto init_audio;

 vid = vid1 << 16 | vid2;

 dev->audio_mode.ac97_vendor_id = vid;
 em28xx_warn("AC97 vendor ID = 0x%08x\n", vid);

 feat = em28xx_read_ac97(dev, AC97_RESET);
 if (feat < 0)
  goto init_audio;

 dev->audio_mode.ac97_feat = feat;
 em28xx_warn("AC97 features = 0x%04x\n", feat);


 if ((vid == 0xffffffff) && (feat == 0x6a90))
  dev->audio_mode.ac97 = 131;
 else if ((vid >> 8) == 0x838476)
  dev->audio_mode.ac97 = 129;

init_audio:

 switch (dev->audio_mode.ac97) {
 case 128:
  em28xx_info("No AC97 audio processor\n");
  break;
 case 131:
  em28xx_info("Empia 202 AC97 audio processor detected\n");
  break;
 case 129:
  em28xx_info("Sigmatel audio processor detected(stac 97%02x)\n",
       dev->audio_mode.ac97_vendor_id & 0xff);
  break;
 case 130:
  em28xx_warn("Unknown AC97 audio processor detected!\n");
  break;
 default:
  break;
 }

 return em28xx_audio_analog_set(dev);
}
