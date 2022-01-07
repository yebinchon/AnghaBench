
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct hso_device {int port_spec; int async_put_intf; int async_get_intf; int mutex; int ref; struct usb_interface* interface; int usb; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int async_get_intf ;
 int async_put_intf ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kref_init (int *) ;
 struct hso_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct hso_device *hso_create_device(struct usb_interface *intf,
         int port_spec)
{
 struct hso_device *hso_dev;

 hso_dev = kzalloc(sizeof(*hso_dev), GFP_ATOMIC);
 if (!hso_dev)
  return ((void*)0);

 hso_dev->port_spec = port_spec;
 hso_dev->usb = interface_to_usbdev(intf);
 hso_dev->interface = intf;
 kref_init(&hso_dev->ref);
 mutex_init(&hso_dev->mutex);

 INIT_WORK(&hso_dev->async_get_intf, async_get_intf);
 INIT_WORK(&hso_dev->async_put_intf, async_put_intf);

 return hso_dev;
}
