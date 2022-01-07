
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct scsi_qla_host {scalar_t__ response_ptr; } ;
struct response {int signature; } ;


 int RESPONSE_PROCESSED ;
 scalar_t__ RESPONSE_QUEUE_DEPTH ;

__attribute__((used)) static void qla4xxx_init_response_q_entries(struct scsi_qla_host *ha)
{
 uint16_t cnt;
 struct response *pkt;

 pkt = (struct response *)ha->response_ptr;
 for (cnt = 0; cnt < RESPONSE_QUEUE_DEPTH; cnt++) {
  pkt->signature = RESPONSE_PROCESSED;
  pkt++;
 }
}
