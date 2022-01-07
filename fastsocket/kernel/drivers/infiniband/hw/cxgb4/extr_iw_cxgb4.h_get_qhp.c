
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c4iw_qp {int dummy; } ;
struct c4iw_dev {int qpidr; } ;


 struct c4iw_qp* idr_find (int *,int ) ;

__attribute__((used)) static inline struct c4iw_qp *get_qhp(struct c4iw_dev *rhp, u32 qpid)
{
 return idr_find(&rhp->qpidr, qpid);
}
