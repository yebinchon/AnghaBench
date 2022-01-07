
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int private_data; } ;
typedef int poll_table ;
struct TYPE_2__ {scalar_t__ aborted; int read_wait; } ;
typedef TYPE_1__ diva_um_idi_os_context_t ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ diva_um_id_get_os_context (int ) ;
 int diva_user_mode_idi_ind_ready (int ,struct file*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int um_idi_poll(struct file *file, poll_table * wait)
{
 diva_um_idi_os_context_t *p_os;

 if (!file->private_data) {
  return (POLLERR);
 }

 if ((!(p_os =
        (diva_um_idi_os_context_t *)
        diva_um_id_get_os_context(file->private_data)))
     || p_os->aborted) {
  return (POLLERR);
 }

 poll_wait(file, &p_os->read_wait, wait);

 if (p_os->aborted) {
  return (POLLERR);
 }

 switch (diva_user_mode_idi_ind_ready(file->private_data, file)) {
 case (-1):
  return (POLLERR);

 case 0:
  return (0);
 }

 return (POLLIN | POLLRDNORM);
}
