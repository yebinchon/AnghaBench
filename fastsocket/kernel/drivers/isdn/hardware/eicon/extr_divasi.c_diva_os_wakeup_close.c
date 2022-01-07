
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int close_wait; } ;
typedef TYPE_1__ diva_um_idi_os_context_t ;


 int wake_up_interruptible (int *) ;

void diva_os_wakeup_close(void *os_context)
{
 diva_um_idi_os_context_t *p_os =
     (diva_um_idi_os_context_t *) os_context;
 wake_up_interruptible(&p_os->close_wait);
}
