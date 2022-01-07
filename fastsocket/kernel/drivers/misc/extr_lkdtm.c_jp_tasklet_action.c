
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softirq_action {int dummy; } ;


 int jprobe_return () ;
 int lkdtm_handler () ;

__attribute__((used)) static void jp_tasklet_action(struct softirq_action *a)
{
 lkdtm_handler();
 jprobe_return();
}
