
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_usbvision {int ctl_input; size_t dev_model; int video_inputs; } ;
struct TYPE_2__ {int codec; } ;




 int RESTRICT_TO_RANGE (int,int ,int ) ;
 int SAA7115_COMPOSITE0 ;
 int SAA7115_COMPOSITE1 ;
 int SAA7115_COMPOSITE2 ;
 int SAA7115_COMPOSITE3 ;
 int SAA7115_SVIDEO1 ;
 int call_all (struct usb_usbvision*,int ,int ,int,int ,int ) ;
 int s_routing ;
 int switch_svideo_input ;
 TYPE_1__* usbvision_device_data ;
 int usbvision_set_audio (struct usb_usbvision*,int) ;
 int video ;

int usbvision_muxsel(struct usb_usbvision *usbvision, int channel)
{


 int mode[4] = { SAA7115_COMPOSITE0, 0, 0, SAA7115_COMPOSITE3 };
 int audio[] = { 1, 0, 0, 0 };





 RESTRICT_TO_RANGE(channel, 0, usbvision->video_inputs);
 usbvision->ctl_input = channel;





 switch (usbvision_device_data[usbvision->dev_model].codec) {
 case 128:
  mode[1] = SAA7115_COMPOSITE2;
  if (switch_svideo_input) {



   mode[2] = SAA7115_COMPOSITE1;
  } else {
   mode[2] = SAA7115_SVIDEO1;
  }
  break;
 case 129:
 default:

  mode[1] = SAA7115_COMPOSITE1;
  mode[2] = SAA7115_SVIDEO1;
  break;
 }
 call_all(usbvision, video, s_routing, mode[channel], 0, 0);
 usbvision_set_audio(usbvision, audio[channel]);
 return 0;
}
