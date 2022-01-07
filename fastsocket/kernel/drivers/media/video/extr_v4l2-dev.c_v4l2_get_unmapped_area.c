
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {TYPE_1__* fops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {unsigned long (* get_unmapped_area ) (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;} ;


 unsigned long ENODEV ;
 unsigned long ENOSYS ;
 unsigned long stub1 (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 struct video_device* video_devdata (struct file*) ;
 scalar_t__ video_is_unregistered (struct video_device*) ;

__attribute__((used)) static unsigned long v4l2_get_unmapped_area(struct file *filp,
  unsigned long addr, unsigned long len, unsigned long pgoff,
  unsigned long flags)
{
 struct video_device *vdev = video_devdata(filp);

 if (!vdev->fops->get_unmapped_area)
  return -ENOSYS;
 if (video_is_unregistered(vdev))
  return -ENODEV;
 return vdev->fops->get_unmapped_area(filp, addr, len, pgoff, flags);
}
