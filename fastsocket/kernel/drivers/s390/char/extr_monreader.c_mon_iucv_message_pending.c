
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mon_private {size_t write_index; int read_ready; TYPE_1__** msg_array; int msglim_count; } ;
struct iucv_path {struct mon_private* private; } ;
struct iucv_message {int dummy; } ;
struct TYPE_2__ {int msglim_reached; int msg; } ;


 int MON_MSGLIM ;
 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;
 int memcpy (int *,struct iucv_message*,int) ;
 int mon_read_wait_queue ;
 int pr_warning (char*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void mon_iucv_message_pending(struct iucv_path *path,
         struct iucv_message *msg)
{
 struct mon_private *monpriv = path->private;

 memcpy(&monpriv->msg_array[monpriv->write_index]->msg,
        msg, sizeof(*msg));
 if (atomic_inc_return(&monpriv->msglim_count) == MON_MSGLIM) {
  pr_warning("The read queue for monitor data is full\n");
  monpriv->msg_array[monpriv->write_index]->msglim_reached = 1;
 }
 monpriv->write_index = (monpriv->write_index + 1) % MON_MSGLIM;
 atomic_inc(&monpriv->read_ready);
 wake_up_interruptible(&mon_read_wait_queue);
}
