
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct r3964_info* disc_data; } ;
struct r3964_message {int dummy; } ;
struct r3964_info {int lock; int read_wait; } ;
struct r3964_client_info {struct r3964_message* first_msg; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int TRACE_L (char*) ;
 int current ;
 struct r3964_client_info* findClient (struct r3964_info*,int ) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_pid (int ) ;

__attribute__((used)) static unsigned int r3964_poll(struct tty_struct *tty, struct file *file,
   struct poll_table_struct *wait)
{
 struct r3964_info *pInfo = tty->disc_data;
 struct r3964_client_info *pClient;
 struct r3964_message *pMsg = ((void*)0);
 unsigned long flags;
 int result = POLLOUT;

 TRACE_L("POLL");

 pClient = findClient(pInfo, task_pid(current));
 if (pClient) {
  poll_wait(file, &pInfo->read_wait, wait);
  spin_lock_irqsave(&pInfo->lock, flags);
  pMsg = pClient->first_msg;
  spin_unlock_irqrestore(&pInfo->lock, flags);
  if (pMsg)
   result |= POLLIN | POLLRDNORM;
 } else {
  result = -EINVAL;
 }
 return result;
}
