
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw_list {int node; struct serio_raw* serio_raw; } ;
struct serio_raw {int list; int refcnt; int serio; } ;
struct inode {int dummy; } ;
struct file {struct serio_raw_list* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int iminor (struct inode*) ;
 struct serio_raw_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int lock_kernel () ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct serio_raw* serio_raw_locate (int ) ;
 int serio_raw_mutex ;
 int unlock_kernel () ;

__attribute__((used)) static int serio_raw_open(struct inode *inode, struct file *file)
{
 struct serio_raw *serio_raw;
 struct serio_raw_list *list;
 int retval = 0;

 lock_kernel();
 retval = mutex_lock_interruptible(&serio_raw_mutex);
 if (retval)
  goto out_bkl;

 if (!(serio_raw = serio_raw_locate(iminor(inode)))) {
  retval = -ENODEV;
  goto out;
 }

 if (!serio_raw->serio) {
  retval = -ENODEV;
  goto out;
 }

 if (!(list = kzalloc(sizeof(struct serio_raw_list), GFP_KERNEL))) {
  retval = -ENOMEM;
  goto out;
 }

 list->serio_raw = serio_raw;
 file->private_data = list;

 serio_raw->refcnt++;
 list_add_tail(&list->node, &serio_raw->list);

out:
 mutex_unlock(&serio_raw_mutex);
out_bkl:
 unlock_kernel();
 return retval;
}
