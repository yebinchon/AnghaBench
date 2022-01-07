
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phantom_device {int status; int open_lock; scalar_t__ opened; } ;
struct inode {int dummy; } ;
struct file {struct phantom_device* private_data; } ;


 int PHB_NOT_OH ;
 int PHB_RUNNING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phantom_status (struct phantom_device*,int) ;

__attribute__((used)) static int phantom_release(struct inode *inode, struct file *file)
{
 struct phantom_device *dev = file->private_data;

 mutex_lock(&dev->open_lock);

 dev->opened = 0;
 phantom_status(dev, dev->status & ~PHB_RUNNING);
 dev->status &= ~PHB_NOT_OH;

 mutex_unlock(&dev->open_lock);

 return 0;
}
