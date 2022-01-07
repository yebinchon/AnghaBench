
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_device {int users; int writers; int readers; } ;


 int EBUSY ;
 int ENODEV ;
 int O_ACCMODE ;
 int O_RDONLY ;

int dvb_generic_open(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;

 if (!dvbdev)
  return -ENODEV;

 if (!dvbdev->users)
  return -EBUSY;

 if ((file->f_flags & O_ACCMODE) == O_RDONLY) {
  if (!dvbdev->readers)
   return -EBUSY;
  dvbdev->readers--;
 } else {
  if (!dvbdev->writers)
   return -EBUSY;
  dvbdev->writers--;
 }

 dvbdev->users--;
 return 0;
}
