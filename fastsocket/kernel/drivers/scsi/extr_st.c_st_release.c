
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {scalar_t__ door_locked; scalar_t__ in_use; int buffer; } ;
struct inode {int dummy; } ;
struct file {struct scsi_tape* private_data; } ;


 scalar_t__ ST_LOCKED_AUTO ;
 int do_door_lock (struct scsi_tape*,int ) ;
 int normalize_buffer (int ) ;
 int scsi_tape_put (struct scsi_tape*) ;
 int st_dev_arr_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int st_release(struct inode *inode, struct file *filp)
{
 int result = 0;
 struct scsi_tape *STp = filp->private_data;

 if (STp->door_locked == ST_LOCKED_AUTO)
  do_door_lock(STp, 0);

 normalize_buffer(STp->buffer);
 write_lock(&st_dev_arr_lock);
 STp->in_use = 0;
 write_unlock(&st_dev_arr_lock);
 scsi_tape_put(STp);

 return result;
}
