
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ctr_running ;
 int nmi_cpu_setup (void*) ;
 int nmi_cpu_start (void*) ;
 scalar_t__ nmi_enabled ;

__attribute__((used)) static void nmi_cpu_up(void *dummy)
{
 if (nmi_enabled)
  nmi_cpu_setup(dummy);
 if (ctr_running)
  nmi_cpu_start(dummy);
}
