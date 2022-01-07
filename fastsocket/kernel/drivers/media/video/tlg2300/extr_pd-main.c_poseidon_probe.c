
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dev; } ;
struct TYPE_5__ {int name; } ;
struct poseidon {int pm_work; TYPE_3__* udev; int device_list; TYPE_2__ v4l2_dev; int lock; int interface; int kref; } ;
struct TYPE_6__ {int autosuspend_delay; scalar_t__ autosuspend_disabled; } ;
struct TYPE_4__ {char* name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int PM_SUSPEND_DELAY ;
 int check_firmware (struct usb_device*,int*) ;
 char* dev_name (struct device*) ;
 int device_init_wakeup (int *,int) ;
 struct poseidon* find_old_poseidon (struct usb_device*) ;
 int hibernation_resume ;
 scalar_t__ in_hibernation (struct poseidon*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kref_init (int *) ;
 struct poseidon* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int logpm (struct poseidon*) ;
 int mutex_init (int *) ;
 int pd_device_list ;
 int pd_dvb_usb_device_init (struct poseidon*) ;
 int pd_video_init (struct poseidon*) ;
 int poseidon_audio_init (struct poseidon*) ;
 int poseidon_fm_init (struct poseidon*) ;
 int schedule_work (int *) ;
 int set_map_flags (struct poseidon*,struct usb_device*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 TYPE_3__* usb_get_dev (struct usb_device*) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,struct poseidon*) ;
 int v4l2_device_register (int *,TYPE_2__*) ;

__attribute__((used)) static int poseidon_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct poseidon *pd = ((void*)0);
 int ret = 0;
 int new_one = 0;


 check_firmware(udev, &ret);
 if (ret)
  return 0;


 pd = find_old_poseidon(udev);
 if (!pd) {
  pd = kzalloc(sizeof(*pd), GFP_KERNEL);
  if (!pd)
   return -ENOMEM;
  kref_init(&pd->kref);
  set_map_flags(pd, udev);
  new_one = 1;
 }

 pd->udev = usb_get_dev(udev);
 pd->interface = usb_get_intf(interface);
 usb_set_intfdata(interface, pd);

 if (new_one) {
  struct device *dev = &interface->dev;

  logpm(pd);
  mutex_init(&pd->lock);


  snprintf(pd->v4l2_dev.name, sizeof(pd->v4l2_dev.name), "%s %s",
   dev->driver->name, dev_name(dev));
  ret = v4l2_device_register(((void*)0), &pd->v4l2_dev);


  ret = pd_video_init(pd);
  poseidon_audio_init(pd);
  poseidon_fm_init(pd);
  pd_dvb_usb_device_init(pd);

  INIT_LIST_HEAD(&pd->device_list);
  list_add_tail(&pd->device_list, &pd_device_list);
 }

 device_init_wakeup(&udev->dev, 1);
 return 0;
}
