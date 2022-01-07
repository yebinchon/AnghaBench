
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_device {int state; int waitq; int requests_waitq; int requests_lock; int mutex; } ;
struct inode {int dummy; } ;
struct file {struct uinput_device* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UIST_NEW_DEVICE ;
 int init_waitqueue_head (int *) ;
 struct uinput_device* kzalloc (int,int ) ;
 int lock_kernel () ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int uinput_open(struct inode *inode, struct file *file)
{
 struct uinput_device *newdev;

 newdev = kzalloc(sizeof(struct uinput_device), GFP_KERNEL);
 if (!newdev)
  return -ENOMEM;

 lock_kernel();
 mutex_init(&newdev->mutex);
 spin_lock_init(&newdev->requests_lock);
 init_waitqueue_head(&newdev->requests_waitq);
 init_waitqueue_head(&newdev->waitq);
 newdev->state = UIST_NEW_DEVICE;

 file->private_data = newdev;
 unlock_kernel();

 return 0;
}
