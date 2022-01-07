
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_v4l2_fh {int rhp; int wait_data; scalar_t__ fw_mode_flag; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ pvr2_ioread_avail (int ) ;
 int pvr2_v4l2_iosetup (struct pvr2_v4l2_fh*) ;

__attribute__((used)) static unsigned int pvr2_v4l2_poll(struct file *file, poll_table *wait)
{
 unsigned int mask = 0;
 struct pvr2_v4l2_fh *fh = file->private_data;
 int ret;

 if (fh->fw_mode_flag) {
  mask |= POLLIN | POLLRDNORM;
  return mask;
 }

 if (!fh->rhp) {
  ret = pvr2_v4l2_iosetup(fh);
  if (ret) return POLLERR;
 }

 poll_wait(file,&fh->wait_data,wait);

 if (pvr2_ioread_avail(fh->rhp) >= 0) {
  mask |= POLLIN | POLLRDNORM;
 }

 return mask;
}
