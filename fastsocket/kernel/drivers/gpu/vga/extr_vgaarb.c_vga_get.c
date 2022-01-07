
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_t ;
struct vga_device {int dummy; } ;
struct pci_dev {int dummy; } ;


 int EINTR ;
 int ENODEV ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 struct vga_device* __vga_tryget (struct vga_device*,unsigned int) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vga_check_first_use () ;
 struct pci_dev* vga_default_device () ;
 int vga_lock ;
 int vga_wait_queue ;
 struct vga_device* vgadev_find (struct pci_dev*) ;

int vga_get(struct pci_dev *pdev, unsigned int rsrc, int interruptible)
{
 struct vga_device *vgadev, *conflict;
 unsigned long flags;
 wait_queue_t wait;
 int rc = 0;

 vga_check_first_use();

 if (pdev == ((void*)0))
  pdev = vga_default_device();
 if (pdev == ((void*)0))
  return 0;

 for (;;) {
  spin_lock_irqsave(&vga_lock, flags);
  vgadev = vgadev_find(pdev);
  if (vgadev == ((void*)0)) {
   spin_unlock_irqrestore(&vga_lock, flags);
   rc = -ENODEV;
   break;
  }
  conflict = __vga_tryget(vgadev, rsrc);
  spin_unlock_irqrestore(&vga_lock, flags);
  if (conflict == ((void*)0))
   break;
  init_waitqueue_entry(&wait, current);
  add_wait_queue(&vga_wait_queue, &wait);
  set_current_state(interruptible ?
      TASK_INTERRUPTIBLE :
      TASK_UNINTERRUPTIBLE);
  if (signal_pending(current)) {
   rc = -EINTR;
   break;
  }
  schedule();
  remove_wait_queue(&vga_wait_queue, &wait);
  set_current_state(TASK_RUNNING);
 }
 return rc;
}
