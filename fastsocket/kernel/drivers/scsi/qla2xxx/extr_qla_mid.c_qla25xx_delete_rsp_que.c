
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct rsp_que {int options; } ;


 int BIT_0 ;
 int QLA_SUCCESS ;
 int qla25xx_free_rsp_que (struct scsi_qla_host*,struct rsp_que*) ;
 int qla25xx_init_rsp_que (struct scsi_qla_host*,struct rsp_que*) ;

__attribute__((used)) static int
qla25xx_delete_rsp_que(struct scsi_qla_host *vha, struct rsp_que *rsp)
{
 int ret = -1;

 if (rsp) {
  rsp->options |= BIT_0;
  ret = qla25xx_init_rsp_que(vha, rsp);
 }
 if (ret == QLA_SUCCESS)
  qla25xx_free_rsp_que(vha, rsp);

 return ret;
}
