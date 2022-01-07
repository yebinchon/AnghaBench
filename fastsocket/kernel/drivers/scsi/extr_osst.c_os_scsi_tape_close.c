
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osst_tape {scalar_t__ door_locked; int device; scalar_t__ in_use; int buffer; scalar_t__ header_ok; scalar_t__ raw; } ;
struct inode {int dummy; } ;
struct file {struct osst_tape* private_data; } ;


 scalar_t__ ST_LOCKED_AUTO ;
 int do_door_lock (struct osst_tape*,int ) ;
 int normalize_buffer (int ) ;
 int os_scsi_tapes_lock ;
 int scsi_device_put (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int os_scsi_tape_close(struct inode * inode, struct file * filp)
{
 int result = 0;
 struct osst_tape * STp = filp->private_data;

 if (STp->door_locked == ST_LOCKED_AUTO)
  do_door_lock(STp, 0);

 if (STp->raw)
  STp->header_ok = 0;

 normalize_buffer(STp->buffer);
 write_lock(&os_scsi_tapes_lock);
 STp->in_use = 0;
 write_unlock(&os_scsi_tapes_lock);

 scsi_device_put(STp->device);

 return result;
}
