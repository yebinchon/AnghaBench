
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_wait; } ;
typedef TYPE_1__ diva_um_idi_os_context_t ;


 int wake_up_interruptible (int *) ;

void diva_os_wakeup_read(void *os_context)
{
 diva_um_idi_os_context_t *p_os =
     (diva_um_idi_os_context_t *) os_context;
 wake_up_interruptible(&p_os->read_wait);
}
