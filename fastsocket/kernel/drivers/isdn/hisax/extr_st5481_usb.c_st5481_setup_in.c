
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct st5481_in {int num_packets; int packet_size; int rcvbuf; int ep; int urb; int bufsize; TYPE_1__* adapter; } ;
struct TYPE_2__ {struct usb_device* usb_dev; } ;


 int DBG (int,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 int st5481_setup_isocpipes (int ,struct usb_device*,int ,int,int,int,int ,struct st5481_in*) ;
 int usb_in_complete ;
 int usb_rcvisocpipe (struct usb_device*,int ) ;

int st5481_setup_in(struct st5481_in *in)
{
 struct usb_device *dev = in->adapter->usb_dev;
 int retval;

 DBG(4,"");

 in->rcvbuf = kmalloc(in->bufsize, GFP_KERNEL);
 retval = -ENOMEM;
 if (!in->rcvbuf)
  goto err;

 retval = st5481_setup_isocpipes(in->urb, dev,
     usb_rcvisocpipe(dev, in->ep),
     in->num_packets, in->packet_size,
     in->num_packets * in->packet_size,
     usb_in_complete, in);
 if (retval)
  goto err_free;
 return 0;

 err_free:
 kfree(in->rcvbuf);
 err:
 return retval;
}
