
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urfile {TYPE_1__* urd; } ;
struct inode {int dummy; } ;
struct file {struct urfile* private_data; } ;
struct TYPE_2__ {int wait; int open_lock; int open_flag; } ;


 int TRACE (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int urdev_put (TYPE_1__*) ;
 int urfile_free (struct urfile*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int ur_release(struct inode *inode, struct file *file)
{
 struct urfile *urf = file->private_data;

 TRACE("ur_release\n");
 spin_lock(&urf->urd->open_lock);
 urf->urd->open_flag--;
 spin_unlock(&urf->urd->open_lock);
 wake_up_interruptible(&urf->urd->wait);
 urdev_put(urf->urd);
 urfile_free(urf);
 return 0;
}
