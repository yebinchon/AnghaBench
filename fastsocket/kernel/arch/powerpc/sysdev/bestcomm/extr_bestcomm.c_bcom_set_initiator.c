
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ BCOM_INITIATOR_ALWAYS ;
 scalar_t__ bcom_desc_initiator (int ) ;
 int bcom_desc_is_drd (int ) ;
 int bcom_drd_is_extended (int ) ;
 int bcom_set_desc_initiator (int *,int) ;
 int bcom_set_tcr_initiator (int,int) ;
 int * bcom_task_desc (int) ;
 int bcom_task_num_descs (int) ;

void
bcom_set_initiator(int task, int initiator)
{
 int i;
 int num_descs;
 u32 *desc;
 int next_drd_has_initiator;

 bcom_set_tcr_initiator(task, initiator);





 desc = bcom_task_desc(task);
 next_drd_has_initiator = 1;
 num_descs = bcom_task_num_descs(task);

 for (i=0; i<num_descs; i++, desc++) {
  if (!bcom_desc_is_drd(*desc))
   continue;
  if (next_drd_has_initiator)
   if (bcom_desc_initiator(*desc) != BCOM_INITIATOR_ALWAYS)
    bcom_set_desc_initiator(desc, initiator);
  next_drd_has_initiator = !bcom_drd_is_extended(*desc);
 }
}
