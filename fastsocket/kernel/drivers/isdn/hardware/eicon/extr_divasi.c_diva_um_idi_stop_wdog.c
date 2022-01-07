
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int diva_timer_id; } ;
typedef TYPE_1__ diva_um_idi_os_context_t ;


 int del_timer (int *) ;
 scalar_t__ diva_um_id_get_os_context (void*) ;

void diva_um_idi_stop_wdog(void *entity)
{
 diva_um_idi_os_context_t *p_os;

 if (entity &&
     ((p_os =
       (diva_um_idi_os_context_t *)
       diva_um_id_get_os_context(entity)))) {
  del_timer(&p_os->diva_timer_id);
 }
}
