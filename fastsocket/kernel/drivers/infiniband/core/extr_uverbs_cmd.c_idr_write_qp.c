
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uobject {struct ib_qp* object; } ;
struct ib_ucontext {int dummy; } ;
struct ib_qp {int dummy; } ;


 int ib_uverbs_qp_idr ;
 struct ib_uobject* idr_write_uobj (int *,int,struct ib_ucontext*) ;

__attribute__((used)) static struct ib_qp *idr_write_qp(int qp_handle, struct ib_ucontext *context)
{
 struct ib_uobject *uobj;

 uobj = idr_write_uobj(&ib_uverbs_qp_idr, qp_handle, context);
 return uobj ? uobj->object : ((void*)0);
}
