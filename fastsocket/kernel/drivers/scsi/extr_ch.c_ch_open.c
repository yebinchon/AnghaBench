
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_3__ {int device; } ;
typedef TYPE_1__ scsi_changer ;


 int ENXIO ;
 int ch_index_idr ;
 int ch_index_lock ;
 TYPE_1__* idr_find (int *,int) ;
 int iminor (struct inode*) ;
 int lock_kernel () ;
 scalar_t__ scsi_device_get (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int
ch_open(struct inode *inode, struct file *file)
{
 scsi_changer *ch;
 int minor = iminor(inode);

 lock_kernel();
 spin_lock(&ch_index_lock);
 ch = idr_find(&ch_index_idr, minor);

 if (((void*)0) == ch || scsi_device_get(ch->device)) {
  spin_unlock(&ch_index_lock);
  unlock_kernel();
  return -ENXIO;
 }
 spin_unlock(&ch_index_lock);

 file->private_data = ch;
 unlock_kernel();
 return 0;
}
