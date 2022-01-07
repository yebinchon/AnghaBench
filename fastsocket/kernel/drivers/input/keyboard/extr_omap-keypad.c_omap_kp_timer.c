
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kp_tasklet ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void omap_kp_timer(unsigned long data)
{
 tasklet_schedule(&kp_tasklet);
}
