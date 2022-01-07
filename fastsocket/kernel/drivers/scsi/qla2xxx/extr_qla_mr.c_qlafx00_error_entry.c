
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct sts_entry_fx00 {int handle; } ;
struct rsp_que {int dummy; } ;
struct req_que {int dummy; } ;
struct qla_hw_data {struct req_que** req_q_map; } ;
struct TYPE_9__ {int (* done ) (struct qla_hw_data*,TYPE_1__*,int) ;} ;
typedef TYPE_1__ srb_t ;
struct TYPE_10__ {int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int DID_ERROR ;
 int ISP_ABORT_NEEDED ;
 size_t MSW (int ) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,int ) ;
 int ql_dbg_async ;
 TYPE_1__* qla2x00_get_sp_from_handle (TYPE_2__*,char const*,struct req_que*,struct sts_entry_fx00*) ;
 int qla2xxx_wake_dpc (TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct qla_hw_data*,TYPE_1__*,int) ;

__attribute__((used)) static void
qlafx00_error_entry(scsi_qla_host_t *vha, struct rsp_que *rsp,
      struct sts_entry_fx00 *pkt, uint8_t estatus, uint8_t etype)
{
 srb_t *sp;
 struct qla_hw_data *ha = vha->hw;
 const char func[] = "ERROR-IOCB";
 uint16_t que = MSW(pkt->handle);
 struct req_que *req = ((void*)0);
 int res = DID_ERROR << 16;

 ql_dbg(ql_dbg_async, vha, 0x507f,
     "type of error status in response: 0x%x\n", estatus);

 req = ha->req_q_map[que];

 sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
 if (sp) {
  sp->done(ha, sp, res);
  return;
 }

 set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
 qla2xxx_wake_dpc(vha);
}
