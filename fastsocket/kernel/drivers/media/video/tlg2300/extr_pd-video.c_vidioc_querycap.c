
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct poseidon {int udev; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;


 int KERNEL_VERSION (int ,int ,int) ;
 int V4L2_CAP_AUDIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int logs (struct front_face*) ;
 int strcpy (int ,char*) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *fh,
   struct v4l2_capability *cap)
{
 struct front_face *front = fh;
 struct poseidon *p = front->pd;

 logs(front);

 strcpy(cap->driver, "tele-video");
 strcpy(cap->card, "Telegent Poseidon");
 usb_make_path(p->udev, cap->bus_info, sizeof(cap->bus_info));
 cap->version = KERNEL_VERSION(0, 0, 1);
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_TUNER |
    V4L2_CAP_AUDIO | V4L2_CAP_STREAMING |
    V4L2_CAP_READWRITE | V4L2_CAP_VBI_CAPTURE;
 return 0;
}
