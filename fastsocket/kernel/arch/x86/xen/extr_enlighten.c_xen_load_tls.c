
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {int dummy; } ;


 scalar_t__ PARAVIRT_LAZY_CPU ;
 int fs ;
 int lazy_load_gs (int ) ;
 int load_TLS_descriptor (struct thread_struct*,unsigned int,int) ;
 int loadsegment (int ,int ) ;
 scalar_t__ paravirt_get_lazy_mode () ;
 int xen_mc_batch () ;
 int xen_mc_issue (scalar_t__) ;

__attribute__((used)) static void xen_load_tls(struct thread_struct *t, unsigned int cpu)
{
 if (paravirt_get_lazy_mode() == PARAVIRT_LAZY_CPU) {



  loadsegment(fs, 0);

 }

 xen_mc_batch();

 load_TLS_descriptor(t, cpu, 0);
 load_TLS_descriptor(t, cpu, 1);
 load_TLS_descriptor(t, cpu, 2);

 xen_mc_issue(PARAVIRT_LAZY_CPU);
}
