
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int dummy; } ;
struct ib_qp {int dummy; } ;


 int ib_uverbs_qp_idr ;
 struct ib_qp* idr_read_obj (int *,int,struct ib_ucontext*,int ) ;

__attribute__((used)) static struct ib_qp *idr_read_qp(int qp_handle, struct ib_ucontext *context)
{
 return idr_read_obj(&ib_uverbs_qp_idr, qp_handle, context, 0);
}
