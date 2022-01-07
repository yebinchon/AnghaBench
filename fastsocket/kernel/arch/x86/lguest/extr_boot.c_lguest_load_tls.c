
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {int tls_array; } ;


 int LHCALL_LOAD_TLS ;
 int __pa (int *) ;
 int lazy_hcall2 (int ,int ,unsigned int) ;
 int lazy_load_gs (int ) ;

__attribute__((used)) static void lguest_load_tls(struct thread_struct *t, unsigned int cpu)
{





 lazy_load_gs(0);
 lazy_hcall2(LHCALL_LOAD_TLS, __pa(&t->tls_array), cpu);
}
