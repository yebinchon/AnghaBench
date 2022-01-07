
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {int kernel_ioctl; } ;


 int EINVAL ;
 int ENODEV ;
 int dvb_usercopy (struct inode*,struct file*,unsigned int,unsigned long,int ) ;

int dvb_generic_ioctl(struct inode *inode, struct file *file,
         unsigned int cmd, unsigned long arg)
{
 struct dvb_device *dvbdev = file->private_data;

 if (!dvbdev)
  return -ENODEV;

 if (!dvbdev->kernel_ioctl)
  return -EINVAL;

 return dvb_usercopy(inode, file, cmd, arg, dvbdev->kernel_ioctl);
}
