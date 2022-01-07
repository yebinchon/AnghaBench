
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct cryptocop_private* private_data; } ;
struct cryptocop_private {scalar_t__ sid; struct cryptocop_private* next; } ;


 scalar_t__ CRYPTOCOP_SESSION_ID_NONE ;
 int cryptocop_free_session (scalar_t__) ;
 int kfree (struct cryptocop_private*) ;

__attribute__((used)) static int cryptocop_release(struct inode *inode, struct file *filp)
{
 struct cryptocop_private *dev = filp->private_data;
 struct cryptocop_private *dev_next;

 while (dev){
  dev_next = dev->next;
  if (dev->sid != CRYPTOCOP_SESSION_ID_NONE) {
   (void)cryptocop_free_session(dev->sid);
  }
  kfree(dev);
  dev = dev_next;
 }

 return 0;
}
