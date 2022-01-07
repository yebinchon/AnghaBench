
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int BUG_ON (int ) ;
 int PARAVIRT_LAZY_CPU ;
 unsigned long __pa (int *) ;
 int __va (unsigned long) ;
 int __xen_write_cr3 (int,unsigned long) ;
 int percpu_write (int ,unsigned long) ;
 int preemptible () ;
 int xen_cr3 ;
 int * xen_get_user_pgd (int ) ;
 int xen_mc_batch () ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_write_cr3(unsigned long cr3)
{
 BUG_ON(preemptible());

 xen_mc_batch();



 percpu_write(xen_cr3, cr3);

 __xen_write_cr3(1, cr3);
 xen_mc_issue(PARAVIRT_LAZY_CPU);
}
