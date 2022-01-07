
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device {int dummy; } ;
struct data_queue {scalar_t__ qid; int usb_maxpacket; int usb_endpoint; TYPE_1__* rt2x00dev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ QID_RX ;
 struct usb_device* to_usb_device_intf (int ) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 void* usb_maxpacket (struct usb_device*,int,int) ;
 int usb_rcvbulkpipe (struct usb_device*,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static void rt2x00usb_assign_endpoint(struct data_queue *queue,
          struct usb_endpoint_descriptor *ep_desc)
{
 struct usb_device *usb_dev = to_usb_device_intf(queue->rt2x00dev->dev);
 int pipe;

 queue->usb_endpoint = usb_endpoint_num(ep_desc);

 if (queue->qid == QID_RX) {
  pipe = usb_rcvbulkpipe(usb_dev, queue->usb_endpoint);
  queue->usb_maxpacket = usb_maxpacket(usb_dev, pipe, 0);
 } else {
  pipe = usb_sndbulkpipe(usb_dev, queue->usb_endpoint);
  queue->usb_maxpacket = usb_maxpacket(usb_dev, pipe, 1);
 }

 if (!queue->usb_maxpacket)
  queue->usb_maxpacket = 1;
}
