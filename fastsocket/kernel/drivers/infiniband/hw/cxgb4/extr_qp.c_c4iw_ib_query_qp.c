
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp_init_attr {int qp_state; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct c4iw_qp {TYPE_1__ attr; } ;


 int memset (struct ib_qp_init_attr*,int ,int) ;
 struct c4iw_qp* to_c4iw_qp (struct ib_qp*) ;
 int to_ib_qp_state (int ) ;

int c4iw_ib_query_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
       int attr_mask, struct ib_qp_init_attr *init_attr)
{
 struct c4iw_qp *qhp = to_c4iw_qp(ibqp);

 memset(attr, 0, sizeof *attr);
 memset(init_attr, 0, sizeof *init_attr);
 attr->qp_state = to_ib_qp_state(qhp->attr.state);
 return 0;
}
