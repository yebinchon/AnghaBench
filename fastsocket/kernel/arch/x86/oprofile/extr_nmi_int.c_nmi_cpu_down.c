
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ctr_running ;
 int nmi_cpu_shutdown (void*) ;
 int nmi_cpu_stop (void*) ;
 scalar_t__ nmi_enabled ;

__attribute__((used)) static void nmi_cpu_down(void *dummy)
{
 if (ctr_running)
  nmi_cpu_stop(dummy);
 if (nmi_enabled)
  nmi_cpu_shutdown(dummy);
}
