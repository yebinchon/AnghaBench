
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_16__ {int alt; scalar_t__* alt_max_pkt_size; scalar_t__ max_pkt_size; } ;
struct TYPE_15__ {TYPE_6__* hs_config_info; } ;
struct TYPE_12__ {int alt; scalar_t__* alt_max_pkt_size; scalar_t__ max_pkt_size; } ;
struct TYPE_11__ {int alt; scalar_t__* alt_max_pkt_size; scalar_t__ max_pkt_size; } ;
struct TYPE_10__ {int alt; scalar_t__* alt_max_pkt_size; scalar_t__ max_pkt_size; } ;
struct TYPE_9__ {int alt; scalar_t__* alt_max_pkt_size; scalar_t__ max_pkt_size; } ;
struct cx231xx {scalar_t__ model; int udev; TYPE_8__ sliced_cc_mode; TYPE_7__ current_pcb_config; TYPE_4__ vbi_mode; TYPE_3__ video_mode; TYPE_2__ adev; TYPE_1__ ts1_mode; } ;
struct TYPE_13__ {int hanc_index; int vanc_index; int video_index; int audio_index; int ts2_index; int ts1_index; } ;
struct TYPE_14__ {TYPE_5__ interface_info; } ;


 scalar_t__ CX231XX_BOARD_CNXT_VIDEO_GRABBER ;
 scalar_t__ CX231XX_BOARD_HAUPPAUGE_USBLIVE2 ;






 int cx231xx_coredbg (char*,int,scalar_t__,scalar_t__) ;
 int cx231xx_errdev (char*,scalar_t__,int,...) ;
 int usb_set_interface (int ,scalar_t__,int) ;

int cx231xx_set_alt_setting(struct cx231xx *dev, u8 index, u8 alt)
{
 int status = 0;
 u32 usb_interface_index = 0;
 u32 max_pkt_size = 0;

 switch (index) {
 case 131:
  usb_interface_index =
      dev->current_pcb_config.hs_config_info[0].interface_info.
      ts1_index + 1;
  dev->ts1_mode.alt = alt;
  if (dev->ts1_mode.alt_max_pkt_size != ((void*)0))
   max_pkt_size = dev->ts1_mode.max_pkt_size =
       dev->ts1_mode.alt_max_pkt_size[dev->ts1_mode.alt];
  break;
 case 130:
  usb_interface_index =
      dev->current_pcb_config.hs_config_info[0].interface_info.
      ts2_index + 1;
  break;
 case 133:
  usb_interface_index =
      dev->current_pcb_config.hs_config_info[0].interface_info.
      audio_index + 1;
  dev->adev.alt = alt;
  if (dev->adev.alt_max_pkt_size != ((void*)0))
   max_pkt_size = dev->adev.max_pkt_size =
       dev->adev.alt_max_pkt_size[dev->adev.alt];
  break;
 case 128:
  usb_interface_index =
      dev->current_pcb_config.hs_config_info[0].interface_info.
      video_index + 1;
  dev->video_mode.alt = alt;
  if (dev->video_mode.alt_max_pkt_size != ((void*)0))
   max_pkt_size = dev->video_mode.max_pkt_size =
       dev->video_mode.alt_max_pkt_size[dev->video_mode.
            alt];
  break;
 case 129:
  usb_interface_index =
      dev->current_pcb_config.hs_config_info[0].interface_info.
      vanc_index + 1;
  dev->vbi_mode.alt = alt;
  if (dev->vbi_mode.alt_max_pkt_size != ((void*)0))
   max_pkt_size = dev->vbi_mode.max_pkt_size =
       dev->vbi_mode.alt_max_pkt_size[dev->vbi_mode.alt];
  break;
 case 132:
  usb_interface_index =
      dev->current_pcb_config.hs_config_info[0].interface_info.
      hanc_index + 1;
  dev->sliced_cc_mode.alt = alt;
  if (dev->sliced_cc_mode.alt_max_pkt_size != ((void*)0))
   max_pkt_size = dev->sliced_cc_mode.max_pkt_size =
       dev->sliced_cc_mode.alt_max_pkt_size[dev->
         sliced_cc_mode.
         alt];
  break;
 default:
  break;
 }

 if (alt > 0 && max_pkt_size == 0) {
  cx231xx_errdev
  ("can't change interface %d alt no. to %d: Max. Pkt size = 0\n",
  usb_interface_index, alt);


  if (dev->model != CX231XX_BOARD_CNXT_VIDEO_GRABBER &&
      dev->model != CX231XX_BOARD_HAUPPAUGE_USBLIVE2)
   return -1;
 }

 cx231xx_coredbg("setting alternate %d with wMaxPacketSize=%u,"
   "Interface = %d\n", alt, max_pkt_size,
   usb_interface_index);

 if (usb_interface_index > 0) {
  status = usb_set_interface(dev->udev, usb_interface_index, alt);
  if (status < 0) {
   cx231xx_errdev
   ("can't change interface %d alt no. to %d (err=%i)\n",
   usb_interface_index, alt, status);
   return status;
  }
 }

 return status;
}
