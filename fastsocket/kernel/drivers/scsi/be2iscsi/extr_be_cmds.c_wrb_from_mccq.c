
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct be_queue_info {scalar_t__ len; int head; int used; } ;
struct TYPE_3__ {struct be_queue_info q; } ;
struct TYPE_4__ {TYPE_1__ mcc_obj; } ;
struct beiscsi_hba {TYPE_2__ ctrl; } ;
struct be_mcc_wrb {int tag0; } ;


 int BUG_ON (int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int queue_head_inc (struct be_queue_info*) ;
 struct be_mcc_wrb* queue_head_node (struct be_queue_info*) ;

struct be_mcc_wrb *wrb_from_mccq(struct beiscsi_hba *phba)
{
 struct be_queue_info *mccq = &phba->ctrl.mcc_obj.q;
 struct be_mcc_wrb *wrb;

 BUG_ON(atomic_read(&mccq->used) >= mccq->len);
 wrb = queue_head_node(mccq);
 memset(wrb, 0, sizeof(*wrb));
 wrb->tag0 = (mccq->head & 0x000000FF) << 16;
 queue_head_inc(mccq);
 atomic_inc(&mccq->used);
 return wrb;
}
