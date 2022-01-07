
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int device; } ;


 int c2_qp_modify (int ,int ,struct ib_qp_attr*,int) ;
 int to_c2dev (int ) ;
 int to_c2qp (struct ib_qp*) ;

__attribute__((used)) static int c2_modify_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
   int attr_mask, struct ib_udata *udata)
{
 int err;

 err =
     c2_qp_modify(to_c2dev(ibqp->device), to_c2qp(ibqp), attr,
    attr_mask);

 return err;
}
