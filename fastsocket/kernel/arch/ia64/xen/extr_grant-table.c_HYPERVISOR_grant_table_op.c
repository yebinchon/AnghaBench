
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnttab_map_grant_ref {int dummy; } ;


 unsigned int GNTTABOP_map_grant_ref ;
 int gnttab_map_grant_ref_pre (struct gnttab_map_grant_ref*) ;
 int xencomm_hypercall_grant_table_op (unsigned int,void*,unsigned int) ;

int
HYPERVISOR_grant_table_op(unsigned int cmd, void *uop, unsigned int count)
{
 if (cmd == GNTTABOP_map_grant_ref) {
  unsigned int i;
  for (i = 0; i < count; i++) {
   gnttab_map_grant_ref_pre(
    (struct gnttab_map_grant_ref *)uop + i);
  }
 }
 return xencomm_hypercall_grant_table_op(cmd, uop, count);
}
