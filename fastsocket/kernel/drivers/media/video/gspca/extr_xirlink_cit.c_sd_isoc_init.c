
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_host_interface {TYPE_2__* endpoint; } ;
struct gspca_dev {int width; TYPE_5__* dev; } ;
struct TYPE_10__ {TYPE_4__* config; } ;
struct TYPE_9__ {TYPE_3__** intf_cache; } ;
struct TYPE_8__ {struct usb_host_interface* altsetting; } ;
struct TYPE_6__ {int wMaxPacketSize; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 int cpu_to_le16 (int) ;

__attribute__((used)) static int sd_isoc_init(struct gspca_dev *gspca_dev)
{
 struct usb_host_interface *alt;
 int max_packet_size;

 switch (gspca_dev->width) {
 case 160:
  max_packet_size = 450;
  break;
 case 176:
  max_packet_size = 600;
  break;
 default:
  max_packet_size = 1022;
  break;
 }


 alt = &gspca_dev->dev->config->intf_cache[0]->altsetting[1];
 alt->endpoint[0].desc.wMaxPacketSize = cpu_to_le16(max_packet_size);

 return 0;
}
