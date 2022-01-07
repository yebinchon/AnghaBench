
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencomm_handle {int dummy; } ;


 int XENCOMM_MINI_ALIGNED (int ,int) ;
 int xc_area ;
 int xencomm_arch_hypercall_grant_table_op (unsigned int,struct xencomm_handle*,unsigned int) ;
 int xencommize_grant_table_op (int *,unsigned int,void*,unsigned int,struct xencomm_handle**) ;

int
xencomm_hypercall_grant_table_op(unsigned int cmd, void *op,
     unsigned int count)
{
 int rc;
 struct xencomm_handle *desc;
 XENCOMM_MINI_ALIGNED(xc_area, 2);

 rc = xencommize_grant_table_op(&xc_area, cmd, op, count, &desc);
 if (rc)
  return rc;

 return xencomm_arch_hypercall_grant_table_op(cmd, desc, count);
}
