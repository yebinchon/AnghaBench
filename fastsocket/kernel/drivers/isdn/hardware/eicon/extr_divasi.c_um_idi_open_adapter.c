
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {void* private_data; } ;
typedef int dword ;
struct TYPE_4__ {unsigned long data; void* function; } ;
struct TYPE_3__ {int adapter_nr; scalar_t__ aborted; TYPE_2__ diva_timer_id; int close_wait; int read_wait; } ;
typedef TYPE_1__ diva_um_idi_os_context_t ;


 scalar_t__ diva_um_id_get_os_context (void*) ;
 scalar_t__ diva_um_timer_function ;
 void* divas_um_idi_create_entity (int ,void*) ;
 int init_timer (TYPE_2__*) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static int um_idi_open_adapter(struct file *file, int adapter_nr)
{
 diva_um_idi_os_context_t *p_os;
 void *e =
     divas_um_idi_create_entity((dword) adapter_nr, (void *) file);

 if (!(file->private_data = e)) {
  return (0);
 }
 p_os = (diva_um_idi_os_context_t *) diva_um_id_get_os_context(e);
 init_waitqueue_head(&p_os->read_wait);
 init_waitqueue_head(&p_os->close_wait);
 init_timer(&p_os->diva_timer_id);
 p_os->diva_timer_id.function = (void *) diva_um_timer_function;
 p_os->diva_timer_id.data = (unsigned long) p_os;
 p_os->aborted = 0;
 p_os->adapter_nr = adapter_nr;
 return (1);
}
