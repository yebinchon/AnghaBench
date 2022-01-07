
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_message_queue_desc {int mq_gpa; int interrupt_vector; int interrupt_apicid; int interrupt_pnode; } ;


 int CBS_IDLE ;
 int IAA_REGISTER ;
 int IMA ;
 int MQE_OK ;
 int MQE_UNEXPECTED_CB_ERR ;
 int UVH_IPI_INT ;
 int XTYPE_CL ;
 int dest_Fixed ;
 int gru_get_amo_value_head (void*) ;
 int gru_get_tri (void*) ;
 int gru_vset (void*,unsigned long,int ,int ,int,int,int ) ;
 int gru_vstore (void*,unsigned long,int ,int ,int,int,int ) ;
 int gru_vstore_phys (void*,unsigned long,int ,int ,int ) ;
 int gru_wait (void*) ;
 unsigned long uv_global_gru_mmr_address (int ,int ) ;
 unsigned long uv_hub_ipi_value (int ,int ,int ) ;

__attribute__((used)) static int send_message_put_nacked(void *cb, struct gru_message_queue_desc *mqd,
   void *mesg, int lines)
{
 unsigned long m, *val = mesg, gpa, save;
 int ret;

 m = mqd->mq_gpa + (gru_get_amo_value_head(cb) << 6);
 if (lines == 2) {
  gru_vset(cb, m, 0, XTYPE_CL, lines, 1, IMA);
  if (gru_wait(cb) != CBS_IDLE)
   return MQE_UNEXPECTED_CB_ERR;
 }
 gru_vstore(cb, m, gru_get_tri(mesg), XTYPE_CL, lines, 1, IMA);
 if (gru_wait(cb) != CBS_IDLE)
  return MQE_UNEXPECTED_CB_ERR;

 if (!mqd->interrupt_vector)
  return MQE_OK;
 gpa = uv_global_gru_mmr_address(mqd->interrupt_pnode, UVH_IPI_INT);
 save = *val;
 *val = uv_hub_ipi_value(mqd->interrupt_apicid, mqd->interrupt_vector,
    dest_Fixed);
 gru_vstore_phys(cb, gpa, gru_get_tri(mesg), IAA_REGISTER, IMA);
 ret = gru_wait(cb);
 *val = save;
 if (ret != CBS_IDLE)
  return MQE_UNEXPECTED_CB_ERR;
 return MQE_OK;
}
