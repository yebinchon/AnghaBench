
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_que {int num_outstanding_cmds; void* outstanding_cmds; } ;
struct qla_hw_data {int fw_xcb_count; int fw_iocb_count; scalar_t__ mqiobase; } ;
typedef int srb_t ;


 int DEFAULT_OUTSTANDING_COMMANDS ;
 int GFP_KERNEL ;
 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int MIN_OUTSTANDING_COMMANDS ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 void* kzalloc (int,int ) ;
 scalar_t__ min (int,int) ;
 int ql2xmaxqueues ;
 scalar_t__ ql2xmultique_tag ;
 int ql_log (int ,int *,int,char*,struct req_que*) ;
 int ql_log_fatal ;

int
qla2x00_alloc_outstanding_cmds(struct qla_hw_data *ha, struct req_que *req)
{

 if (req->outstanding_cmds)
  return QLA_SUCCESS;






 if (!IS_FWI2_CAPABLE(ha) || (ha->mqiobase &&
     (ql2xmultique_tag || ql2xmaxqueues > 1)))
  req->num_outstanding_cmds = DEFAULT_OUTSTANDING_COMMANDS;
 else {
  if (min(ha->fw_xcb_count, ha->fw_iocb_count))
   req->num_outstanding_cmds = ha->fw_xcb_count;
  else
   req->num_outstanding_cmds = ha->fw_iocb_count;
 }

 req->outstanding_cmds = kzalloc(sizeof(srb_t *) *
     req->num_outstanding_cmds, GFP_KERNEL);

 if (!req->outstanding_cmds) {




  req->num_outstanding_cmds = MIN_OUTSTANDING_COMMANDS;
  req->outstanding_cmds = kzalloc(sizeof(srb_t *) *
      req->num_outstanding_cmds, GFP_KERNEL);

  if (!req->outstanding_cmds) {
   ql_log(ql_log_fatal, ((void*)0), 0x0123,
       "Failed to allocate memory for "
       "outstanding_cmds for req_que %p.\n", req);
   req->num_outstanding_cmds = 0;
   return QLA_FUNCTION_FAILED;
  }
 }

 return QLA_SUCCESS;
}
