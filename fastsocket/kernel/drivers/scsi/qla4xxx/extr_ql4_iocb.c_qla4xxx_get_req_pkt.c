
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scsi_qla_host {int req_q_count; struct queue_entry* request_ptr; } ;
struct queue_entry {int dummy; } ;


 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int memset (struct queue_entry*,int ,int) ;
 int qla4xxx_advance_req_ring_ptr (struct scsi_qla_host*) ;
 scalar_t__ qla4xxx_space_in_req_ring (struct scsi_qla_host*,int) ;

__attribute__((used)) static int qla4xxx_get_req_pkt(struct scsi_qla_host *ha,
          struct queue_entry **queue_entry)
{
 uint16_t req_cnt = 1;

 if (qla4xxx_space_in_req_ring(ha, req_cnt)) {
  *queue_entry = ha->request_ptr;
  memset(*queue_entry, 0, sizeof(**queue_entry));

  qla4xxx_advance_req_ring_ptr(ha);
  ha->req_q_count -= req_cnt;
  return QLA_SUCCESS;
 }

 return QLA_ERROR;
}
