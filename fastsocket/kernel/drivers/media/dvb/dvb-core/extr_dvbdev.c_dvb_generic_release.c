
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_device {int users; int writers; int readers; } ;


 int ENODEV ;
 int O_ACCMODE ;
 int O_RDONLY ;

int dvb_generic_release(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;

 if (!dvbdev)
  return -ENODEV;

 if ((file->f_flags & O_ACCMODE) == O_RDONLY) {
  dvbdev->readers++;
 } else {
  dvbdev->writers++;
 }

 dvbdev->users++;
 return 0;
}
