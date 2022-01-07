
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct inode {int dummy; } ;
struct i2o_cfg_info {struct i2o_cfg_info* next; scalar_t__ q_lost; scalar_t__ q_out; scalar_t__ q_in; scalar_t__ q_len; scalar_t__ q_id; int * fasync; struct file* fp; } ;
struct file {void* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int i2o_cfg_info_id ;
 int i2o_config_lock ;
 scalar_t__ kmalloc (int,int ) ;
 int lock_kernel () ;
 struct i2o_cfg_info* open_files ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlock_kernel () ;

__attribute__((used)) static int cfg_open(struct inode *inode, struct file *file)
{
 struct i2o_cfg_info *tmp =
     (struct i2o_cfg_info *)kmalloc(sizeof(struct i2o_cfg_info),
        GFP_KERNEL);
 unsigned long flags;

 if (!tmp)
  return -ENOMEM;

 lock_kernel();
 file->private_data = (void *)(i2o_cfg_info_id++);
 tmp->fp = file;
 tmp->fasync = ((void*)0);
 tmp->q_id = (ulong) file->private_data;
 tmp->q_len = 0;
 tmp->q_in = 0;
 tmp->q_out = 0;
 tmp->q_lost = 0;
 tmp->next = open_files;

 spin_lock_irqsave(&i2o_config_lock, flags);
 open_files = tmp;
 spin_unlock_irqrestore(&i2o_config_lock, flags);
 unlock_kernel();

 return 0;
}
