
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct poseidon {int udev; } ;
struct file {struct poseidon* private_data; } ;


 int KERNEL_VERSION (int ,int ,int) ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_TUNER ;
 int strlcpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
   struct v4l2_capability *v)
{
 struct poseidon *p = file->private_data;

 strlcpy(v->driver, "tele-radio", sizeof(v->driver));
 strlcpy(v->card, "Telegent Poseidon", sizeof(v->card));
 usb_make_path(p->udev, v->bus_info, sizeof(v->bus_info));
 v->version = KERNEL_VERSION(0, 0, 1);
 v->capabilities = V4L2_CAP_TUNER | V4L2_CAP_RADIO;
 return 0;
}
