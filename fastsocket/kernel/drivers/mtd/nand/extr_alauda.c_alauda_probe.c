
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct alauda {int kref; int port; int card_mutex; int dev; void* bulk_out; int bulk_in; void* write_out; struct usb_interface* interface; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int ALAUDA_PORT_SM ;
 int ALAUDA_PORT_XD ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int alauda_check_media (struct alauda*) ;
 int alauda_delete ;
 int dev_info (int *,char*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct alauda* kzalloc (int,int ) ;
 int memcpy (struct alauda*,struct alauda*,int) ;
 int mutex_init (int *) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 int usb_get_dev (int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct alauda*) ;
 void* usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int alauda_probe(struct usb_interface *interface,
  const struct usb_device_id *id)
{
 struct alauda *al;
 struct usb_host_interface *iface;
 struct usb_endpoint_descriptor *ep,
   *ep_in=((void*)0), *ep_out=((void*)0), *ep_wr=((void*)0);
 int i, err = -ENOMEM;

 al = kzalloc(2*sizeof(*al), GFP_KERNEL);
 if (!al)
  goto error;

 kref_init(&al->kref);
 usb_set_intfdata(interface, al);

 al->dev = usb_get_dev(interface_to_usbdev(interface));
 al->interface = interface;

 iface = interface->cur_altsetting;
 for (i = 0; i < iface->desc.bNumEndpoints; ++i) {
  ep = &iface->endpoint[i].desc;

  if (usb_endpoint_is_bulk_in(ep)) {
   ep_in = ep;
  } else if (usb_endpoint_is_bulk_out(ep)) {
   if (i==0)
    ep_wr = ep;
   else
    ep_out = ep;
  }
 }
 err = -EIO;
 if (!ep_wr || !ep_in || !ep_out)
  goto error;

 al->write_out = usb_sndbulkpipe(al->dev,
   usb_endpoint_num(ep_wr));
 al->bulk_in = usb_rcvbulkpipe(al->dev,
   usb_endpoint_num(ep_in));
 al->bulk_out = usb_sndbulkpipe(al->dev,
   usb_endpoint_num(ep_out));


 memcpy(al+1, al, sizeof(*al));

 mutex_init(&al[0].card_mutex);
 mutex_init(&al[1].card_mutex);

 al[0].port = ALAUDA_PORT_XD;
 al[1].port = ALAUDA_PORT_SM;

 dev_info(&interface->dev, "alauda probed\n");
 alauda_check_media(al);
 alauda_check_media(al+1);

 return 0;

error:
 if (al)
  kref_put(&al->kref, alauda_delete);
 return err;
}
