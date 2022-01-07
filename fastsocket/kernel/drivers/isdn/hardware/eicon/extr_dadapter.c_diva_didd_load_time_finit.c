
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int didd_spin ;
 int diva_os_destroy_spin_lock (int *,char*) ;

void diva_didd_load_time_finit (void) {
 diva_os_destroy_spin_lock (&didd_spin, "didd");
}
