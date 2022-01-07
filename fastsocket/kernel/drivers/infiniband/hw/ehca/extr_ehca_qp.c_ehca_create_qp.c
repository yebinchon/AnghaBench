
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_qp {int dummy; } ;
struct ib_pd {int dummy; } ;
struct ehca_qp {struct ib_qp ib_qp; } ;


 scalar_t__ IS_ERR (struct ehca_qp*) ;
 struct ehca_qp* internal_create_qp (struct ib_pd*,struct ib_qp_init_attr*,int *,struct ib_udata*,int ) ;

struct ib_qp *ehca_create_qp(struct ib_pd *pd,
        struct ib_qp_init_attr *qp_init_attr,
        struct ib_udata *udata)
{
 struct ehca_qp *ret;

 ret = internal_create_qp(pd, qp_init_attr, ((void*)0), udata, 0);
 return IS_ERR(ret) ? (struct ib_qp *)ret : &ret->ib_qp;
}
