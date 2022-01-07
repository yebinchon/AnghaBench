
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_6__ {int tag; } ;
struct TYPE_4__ {scalar_t__ va; } ;
struct TYPE_5__ {TYPE_1__ sq; } ;
struct ocrdma_dev {TYPE_3__ mqe_ctx; TYPE_2__ mq; } ;



__attribute__((used)) static inline void *ocrdma_get_mqe_rsp(struct ocrdma_dev *dev)
{
 return (void *)((u8 *) dev->mq.sq.va +
   (dev->mqe_ctx.tag * sizeof(struct ocrdma_mqe)));
}
