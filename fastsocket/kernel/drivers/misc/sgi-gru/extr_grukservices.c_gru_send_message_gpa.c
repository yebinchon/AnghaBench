
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message_header {int lines; int present2; int present; } ;
struct gru_message_queue_desc {int mq_gpa; } ;


 int BUG_ON (int) ;
 int CBS_IDLE ;
 int DIV_ROUND_UP (unsigned int,int) ;
 int GRU_CACHE_LINE_BYTES ;
 int IMA ;
 int MQE_BUG_NO_RESOURCES ;
 int MQE_OK ;
 int MQIE_AGAIN ;
 int MQS_FULL ;
 int STAT (int ) ;
 int get_present2 (struct message_header*) ;
 int gru_free_cpu_resources (void*,void*) ;
 scalar_t__ gru_get_cpu_resources (unsigned int,void**,void**) ;
 int gru_get_tri (struct message_header*) ;
 int gru_mesq (void*,int ,int ,int,int ) ;
 int gru_wait (void*) ;
 int memcpy (void*,void*,unsigned int) ;
 int mesq_send ;
 int mesq_send_failed ;
 int restore_present2 (struct message_header*,int ) ;
 int send_message_failure (void*,struct gru_message_queue_desc*,void*,int) ;

int gru_send_message_gpa(struct gru_message_queue_desc *mqd, void *mesg,
    unsigned int bytes)
{
 struct message_header *mhdr;
 void *cb;
 void *dsr;
 int istatus, clines, ret;

 STAT(mesq_send);
 BUG_ON(bytes < sizeof(int) || bytes > 2 * GRU_CACHE_LINE_BYTES);

 clines = DIV_ROUND_UP(bytes, GRU_CACHE_LINE_BYTES);
 if (gru_get_cpu_resources(bytes, &cb, &dsr))
  return MQE_BUG_NO_RESOURCES;
 memcpy(dsr, mesg, bytes);
 mhdr = dsr;
 mhdr->present = MQS_FULL;
 mhdr->lines = clines;
 if (clines == 2) {
  mhdr->present2 = get_present2(mhdr);
  restore_present2(mhdr, MQS_FULL);
 }

 do {
  ret = MQE_OK;
  gru_mesq(cb, mqd->mq_gpa, gru_get_tri(mhdr), clines, IMA);
  istatus = gru_wait(cb);
  if (istatus != CBS_IDLE)
   ret = send_message_failure(cb, mqd, dsr, clines);
 } while (ret == MQIE_AGAIN);
 gru_free_cpu_resources(cb, dsr);

 if (ret)
  STAT(mesq_send_failed);
 return ret;
}
