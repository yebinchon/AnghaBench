
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct adbdev_state* private_data; } ;
struct adbdev_state {int inuse; int wait_queue; int * completed; int n_pending; int lock; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int * adb_controller ;
 int atomic_set (int *,int ) ;
 scalar_t__ iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 struct adbdev_state* kmalloc (int,int ) ;
 int lock_kernel () ;
 int spin_lock_init (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int adb_open(struct inode *inode, struct file *file)
{
 struct adbdev_state *state;
 int ret = 0;

 lock_kernel();
 if (iminor(inode) > 0 || adb_controller == ((void*)0)) {
  ret = -ENXIO;
  goto out;
 }
 state = kmalloc(sizeof(struct adbdev_state), GFP_KERNEL);
 if (state == 0) {
  ret = -ENOMEM;
  goto out;
 }
 file->private_data = state;
 spin_lock_init(&state->lock);
 atomic_set(&state->n_pending, 0);
 state->completed = ((void*)0);
 init_waitqueue_head(&state->wait_queue);
 state->inuse = 1;

out:
 unlock_kernel();
 return ret;
}
