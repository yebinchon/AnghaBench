
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int request_in; int request_ptr; int request_ring; } ;


 int REQUEST_QUEUE_DEPTH ;

__attribute__((used)) static void qla4xxx_advance_req_ring_ptr(struct scsi_qla_host *ha)
{

 if (ha->request_in == (REQUEST_QUEUE_DEPTH - 1)) {
  ha->request_in = 0;
  ha->request_ptr = ha->request_ring;
 } else {
  ha->request_in++;
  ha->request_ptr++;
 }
}
