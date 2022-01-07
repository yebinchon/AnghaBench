
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_file_private {int recv_msg_lock; int recv_msgs; int wait; } ;
struct file {struct ipmi_file_private* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int ipmi_poll(struct file *file, poll_table *wait)
{
 struct ipmi_file_private *priv = file->private_data;
 unsigned int mask = 0;
 unsigned long flags;

 poll_wait(file, &priv->wait, wait);

 spin_lock_irqsave(&priv->recv_msg_lock, flags);

 if (!list_empty(&(priv->recv_msgs)))
  mask |= (POLLIN | POLLRDNORM);

 spin_unlock_irqrestore(&priv->recv_msg_lock, flags);

 return mask;
}
