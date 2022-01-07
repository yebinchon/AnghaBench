
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_queue_info {scalar_t__ len; int used; int created; } ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {struct be_queue_info q; } ;
struct be_adapter {TYPE_1__ mcc_obj; } ;


 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int queue_head_inc (struct be_queue_info*) ;
 struct be_mcc_wrb* queue_head_node (struct be_queue_info*) ;

__attribute__((used)) static struct be_mcc_wrb *wrb_from_mccq(struct be_adapter *adapter)
{
 struct be_queue_info *mccq = &adapter->mcc_obj.q;
 struct be_mcc_wrb *wrb;

 if (!mccq->created)
  return ((void*)0);

 if (atomic_read(&mccq->used) >= mccq->len)
  return ((void*)0);

 wrb = queue_head_node(mccq);
 queue_head_inc(mccq);
 atomic_inc(&mccq->used);
 memset(wrb, 0, sizeof(*wrb));
 return wrb;
}
