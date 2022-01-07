
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sharpness; scalar_t__ saturation; scalar_t__ hue; scalar_t__ contrast; scalar_t__ brightness; scalar_t__ gop_mode; scalar_t__ bitrate_mode; int audio_codec; scalar_t__ audio_input; scalar_t__ video_input; scalar_t__ video_std; } ;
struct hdpvr_device {TYPE_1__ options; } ;


 int CTRL_BITRATE_MODE_VALUE ;
 int CTRL_BRIGHTNESS ;
 int CTRL_CONTRAST ;
 int CTRL_GOP_MODE_VALUE ;
 int CTRL_HUE ;
 int CTRL_SATURATION ;
 int CTRL_SHARPNESS ;
 int CTRL_VIDEO_INPUT_VALUE ;
 int CTRL_VIDEO_STD_TYPE ;
 int hdpvr_config_call (struct hdpvr_device*,int ,scalar_t__) ;
 int hdpvr_set_audio (struct hdpvr_device*,scalar_t__,int ) ;
 int hdpvr_set_bitrate (struct hdpvr_device*) ;

int hdpvr_set_options(struct hdpvr_device *dev)
{
 hdpvr_config_call(dev, CTRL_VIDEO_STD_TYPE, dev->options.video_std);

 hdpvr_config_call(dev, CTRL_VIDEO_INPUT_VALUE,
    dev->options.video_input+1);

 hdpvr_set_audio(dev, dev->options.audio_input+1,
         dev->options.audio_codec);

 hdpvr_set_bitrate(dev);
 hdpvr_config_call(dev, CTRL_BITRATE_MODE_VALUE,
    dev->options.bitrate_mode);
 hdpvr_config_call(dev, CTRL_GOP_MODE_VALUE, dev->options.gop_mode);

 hdpvr_config_call(dev, CTRL_BRIGHTNESS, dev->options.brightness);
 hdpvr_config_call(dev, CTRL_CONTRAST, dev->options.contrast);
 hdpvr_config_call(dev, CTRL_HUE, dev->options.hue);
 hdpvr_config_call(dev, CTRL_SATURATION, dev->options.saturation);
 hdpvr_config_call(dev, CTRL_SHARPNESS, dev->options.sharpness);

 return 0;
}
