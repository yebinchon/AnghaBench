
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct inode {int dummy; } ;
struct i2o_cfg_info {scalar_t__ q_id; struct i2o_cfg_info* next; } ;
struct file {int private_data; } ;


 int i2o_config_lock ;
 int kfree (struct i2o_cfg_info*) ;
 int lock_kernel () ;
 struct i2o_cfg_info* open_files ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlock_kernel () ;

__attribute__((used)) static int cfg_release(struct inode *inode, struct file *file)
{
 ulong id = (ulong) file->private_data;
 struct i2o_cfg_info *p, **q;
 unsigned long flags;

 lock_kernel();
 spin_lock_irqsave(&i2o_config_lock, flags);
 for (q = &open_files; (p = *q) != ((void*)0); q = &p->next) {
  if (p->q_id == id) {
   *q = p->next;
   kfree(p);
   break;
  }
 }
 spin_unlock_irqrestore(&i2o_config_lock, flags);
 unlock_kernel();

 return 0;
}
