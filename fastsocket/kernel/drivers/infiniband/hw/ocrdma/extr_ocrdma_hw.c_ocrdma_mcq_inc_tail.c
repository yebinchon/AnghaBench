
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tail; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct ocrdma_dev {TYPE_2__ mq; } ;


 int OCRDMA_MQ_CQ_LEN ;

__attribute__((used)) static inline void ocrdma_mcq_inc_tail(struct ocrdma_dev *dev)
{
 dev->mq.cq.tail = (dev->mq.cq.tail + 1) & (OCRDMA_MQ_CQ_LEN - 1);
}
