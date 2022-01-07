
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct iscsi_tcp_task {int dummy; } ;
struct iscsi_session {int dummy; } ;
struct iscsi_endpoint {struct cxgbi_endpoint* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct cxgbi_task_data {int dummy; } ;
struct cxgbi_hba {TYPE_1__* cdev; struct Scsi_Host* shost; } ;
struct cxgbi_endpoint {struct cxgbi_hba* chba; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int itp; } ;


 int BUG_ON (int) ;
 int CXGBI_DBG_ISCSI ;
 int ISCSI_MAX_TARGET ;
 struct cxgbi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 struct iscsi_cls_session* iscsi_session_setup (int ,struct Scsi_Host*,int ,int ,int,int ,int ) ;
 int iscsi_session_teardown (struct iscsi_cls_session*) ;
 scalar_t__ iscsi_tcp_r2tpool_alloc (struct iscsi_session*) ;
 int log_debug (int,char*,struct iscsi_endpoint*,struct iscsi_cls_session*) ;
 int pr_err (char*) ;

struct iscsi_cls_session *cxgbi_create_session(struct iscsi_endpoint *ep,
      u16 cmds_max, u16 qdepth,
      u32 initial_cmdsn)
{
 struct cxgbi_endpoint *cep;
 struct cxgbi_hba *chba;
 struct Scsi_Host *shost;
 struct iscsi_cls_session *cls_session;
 struct iscsi_session *session;

 if (!ep) {
  pr_err("missing endpoint.\n");
  return ((void*)0);
 }

 cep = ep->dd_data;
 chba = cep->chba;
 shost = chba->shost;

 BUG_ON(chba != iscsi_host_priv(shost));

 cls_session = iscsi_session_setup(chba->cdev->itp, shost,
     cmds_max, 0,
     sizeof(struct iscsi_tcp_task) +
     sizeof(struct cxgbi_task_data),
     initial_cmdsn, ISCSI_MAX_TARGET);
 if (!cls_session)
  return ((void*)0);

 session = cls_session->dd_data;
 if (iscsi_tcp_r2tpool_alloc(session))
  goto remove_session;

 log_debug(1 << CXGBI_DBG_ISCSI,
  "ep 0x%p, cls sess 0x%p.\n", ep, cls_session);
 return cls_session;

remove_session:
 iscsi_session_teardown(cls_session);
 return ((void*)0);
}
