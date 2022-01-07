
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_rq {TYPE_1__* to_use; } ;
struct TYPE_2__ {int index; } ;


 int VNIC_RQ_RETURN_RATE ;

__attribute__((used)) static inline int vnic_rq_posting_soon(struct vnic_rq *rq)
{
 return (rq->to_use->index & VNIC_RQ_RETURN_RATE) == 0;
}
