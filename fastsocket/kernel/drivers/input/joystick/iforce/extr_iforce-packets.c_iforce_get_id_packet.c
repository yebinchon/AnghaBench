
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char bRequest; } ;
struct iforce {int bus; char* edata; int expect_packet; int wait; TYPE_2__* ctrl; int usbdev; TYPE_1__ cr; } ;
struct TYPE_5__ {int status; int dev; } ;


 int EINPROGRESS ;
 int FF_CMD_QUERY ;
 int GFP_ATOMIC ;
 int HZ ;


 int dbg (char*,...) ;
 int err (char*,...) ;
 int iforce_send_packet (struct iforce*,int ,char*) ;
 int usb_submit_urb (TYPE_2__*,int ) ;
 int usb_unlink_urb (TYPE_2__*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int iforce_get_id_packet(struct iforce *iforce, char *packet)
{
 switch (iforce->bus) {

 case 128: {
  dbg("iforce_get_id_packet: iforce->bus = USB!");

  }
  break;

 case 129:
  err("iforce_get_id_packet: iforce->bus = SERIO!");

  break;

 default:
  err("iforce_get_id_packet: iforce->bus = %d", iforce->bus);
  break;
 }

 return -(iforce->edata[0] != packet[0]);
}
