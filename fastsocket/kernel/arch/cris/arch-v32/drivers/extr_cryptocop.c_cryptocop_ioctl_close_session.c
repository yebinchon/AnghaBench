
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strcop_session_op {scalar_t__ ses_id; } ;
struct inode {int dummy; } ;
struct file {struct cryptocop_private* private_data; } ;
struct cryptocop_private {scalar_t__ sid; struct cryptocop_private* next; } ;


 int DEBUG (int ) ;
 int DEBUG_API (int ) ;
 int EFAULT ;
 int EINVAL ;
 int VERIFY_READ ;
 int access_ok (int ,struct strcop_session_op*,int) ;
 int copy_from_user (struct strcop_session_op*,struct strcop_session_op*,int) ;
 int cryptocop_free_session (scalar_t__) ;
 int printk (char*,...) ;

__attribute__((used)) static int cryptocop_ioctl_close_session(struct inode *inode, struct file *filp,
      unsigned int cmd, unsigned long arg)
{
 struct cryptocop_private *dev = filp->private_data;
 struct cryptocop_private *prev_dev = ((void*)0);
 struct strcop_session_op *sess_op = (struct strcop_session_op *)arg;
 struct strcop_session_op sop;
 int err;

 DEBUG(printk("cryptocop_ioctl_close_session\n"));

 if (!access_ok(VERIFY_READ, sess_op, sizeof(struct strcop_session_op)))
  return -EFAULT;
 err = copy_from_user(&sop, sess_op, sizeof(struct strcop_session_op));
 if (err) return -EFAULT;

 while (dev && (dev->sid != sop.ses_id)) {
  prev_dev = dev;
  dev = dev->next;
 }
 if (dev){
  if (prev_dev){
   prev_dev->next = dev->next;
  } else {
   filp->private_data = dev->next;
  }
  err = cryptocop_free_session(dev->sid);
  if (err) return -EFAULT;
 } else {
  DEBUG_API(printk("cryptocop_ioctl_close_session: session %lld not found\n", sop.ses_id));
  return -EINVAL;
 }
 return 0;
}
