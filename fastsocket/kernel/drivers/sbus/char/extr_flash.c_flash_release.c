
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ busy; } ;


 TYPE_1__ flash ;
 int flash_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
flash_release(struct inode *inode, struct file *file)
{
 spin_lock(&flash_lock);
 flash.busy = 0;
 spin_unlock(&flash_lock);

 return 0;
}
