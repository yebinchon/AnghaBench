
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int desc_avail; } ;
struct vnic_rq {TYPE_1__ ring; } ;



__attribute__((used)) static inline void vnic_rq_return_descs(struct vnic_rq *rq, unsigned int count)
{
 rq->ring.desc_avail += count;
}
