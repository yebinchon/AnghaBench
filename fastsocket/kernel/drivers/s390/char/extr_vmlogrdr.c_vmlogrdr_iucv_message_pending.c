
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {int priv_lock; int receive_ready; int local_interrupt_buffer; } ;
struct iucv_path {struct vmlogrdr_priv_t* private; } ;
struct iucv_message {int dummy; } ;


 int atomic_inc (int *) ;
 int memcpy (int *,struct iucv_message*,int) ;
 int read_wait_queue ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void vmlogrdr_iucv_message_pending(struct iucv_path *path,
       struct iucv_message *msg)
{
 struct vmlogrdr_priv_t * logptr = path->private;






 spin_lock(&logptr->priv_lock);
 memcpy(&logptr->local_interrupt_buffer, msg, sizeof(*msg));
 atomic_inc(&logptr->receive_ready);
 spin_unlock(&logptr->priv_lock);
 wake_up_interruptible(&read_wait_queue);
}
