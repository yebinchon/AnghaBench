
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct be_queue_info {int id; } ;
struct TYPE_3__ {struct be_queue_info q; } ;
struct TYPE_4__ {TYPE_1__ mcc_obj; } ;
struct beiscsi_hba {scalar_t__ db_va; TYPE_2__ ctrl; } ;


 int DB_MCCQ_NUM_POSTED_SHIFT ;
 scalar_t__ DB_MCCQ_OFFSET ;
 int DB_MCCQ_RING_ID_MASK ;
 int iowrite32 (int,scalar_t__) ;

void be_mcc_notify(struct beiscsi_hba *phba)
{
 struct be_queue_info *mccq = &phba->ctrl.mcc_obj.q;
 u32 val = 0;

 val |= mccq->id & DB_MCCQ_RING_ID_MASK;
 val |= 1 << DB_MCCQ_NUM_POSTED_SHIFT;
 iowrite32(val, phba->db_va + DB_MCCQ_OFFSET);
}
