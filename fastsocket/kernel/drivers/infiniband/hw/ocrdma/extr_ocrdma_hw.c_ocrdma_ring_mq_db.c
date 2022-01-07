
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ db; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ sq; } ;
struct ocrdma_dev {TYPE_3__ nic_info; TYPE_2__ mq; } ;


 scalar_t__ OCRDMA_DB_MQ_OFFSET ;
 int OCRDMA_MQ_ID_MASK ;
 int OCRDMA_MQ_NUM_MQE_SHIFT ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void ocrdma_ring_mq_db(struct ocrdma_dev *dev)
{
 u32 val = 0;

 val |= dev->mq.sq.id & OCRDMA_MQ_ID_MASK;
 val |= 1 << OCRDMA_MQ_NUM_MQE_SHIFT;
 iowrite32(val, dev->nic_info.db + OCRDMA_DB_MQ_OFFSET);
}
