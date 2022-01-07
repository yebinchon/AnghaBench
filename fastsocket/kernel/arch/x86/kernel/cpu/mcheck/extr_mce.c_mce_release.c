
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int mce_state_lock ;
 int open_count ;
 scalar_t__ open_exclu ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mce_release(struct inode *inode, struct file *file)
{
 spin_lock(&mce_state_lock);

 open_count--;
 open_exclu = 0;

 spin_unlock(&mce_state_lock);

 return 0;
}
