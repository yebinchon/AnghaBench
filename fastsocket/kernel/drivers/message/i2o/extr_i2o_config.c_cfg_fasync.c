
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct i2o_cfg_info {scalar_t__ q_id; int fasync; struct i2o_cfg_info* next; } ;
struct file {int private_data; } ;


 int EBADF ;
 int fasync_helper (int,struct file*,int,int *) ;
 int lock_kernel () ;
 struct i2o_cfg_info* open_files ;
 int unlock_kernel () ;

__attribute__((used)) static int cfg_fasync(int fd, struct file *fp, int on)
{
 ulong id = (ulong) fp->private_data;
 struct i2o_cfg_info *p;
 int ret = -EBADF;

 lock_kernel();
 for (p = open_files; p; p = p->next)
  if (p->q_id == id)
   break;

 if (p)
  ret = fasync_helper(fd, fp, on, &p->fasync);
 unlock_kernel();
 return ret;
}
