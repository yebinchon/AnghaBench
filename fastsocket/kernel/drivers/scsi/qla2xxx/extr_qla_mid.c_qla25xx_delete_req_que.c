
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct req_que {int options; } ;


 int BIT_0 ;
 int QLA_SUCCESS ;
 int qla25xx_free_req_que (struct scsi_qla_host*,struct req_que*) ;
 int qla25xx_init_req_que (struct scsi_qla_host*,struct req_que*) ;

int
qla25xx_delete_req_que(struct scsi_qla_host *vha, struct req_que *req)
{
 int ret = -1;

 if (req) {
  req->options |= BIT_0;
  ret = qla25xx_init_req_que(vha, req);
 }
 if (ret == QLA_SUCCESS)
  qla25xx_free_req_que(vha, req);

 return ret;
}
