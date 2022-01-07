
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_rq {TYPE_1__* to_use; } ;
struct TYPE_2__ {unsigned int index; } ;



__attribute__((used)) static inline unsigned int vnic_rq_next_index(struct vnic_rq *rq)
{
 return rq->to_use->index;
}
