
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ap_tasklet ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void ap_interrupt_handler(void *unused1, void *unused2)
{
 tasklet_schedule(&ap_tasklet);
}
