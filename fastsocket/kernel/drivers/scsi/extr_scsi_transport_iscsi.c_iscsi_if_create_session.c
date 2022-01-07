
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int sid; int host_no; } ;
struct TYPE_4__ {TYPE_1__ c_session_ret; } ;
struct iscsi_uevent {TYPE_2__ r; } ;
struct iscsi_transport {struct iscsi_cls_session* (* create_session ) (struct iscsi_endpoint*,int ,int ,int ) ;} ;
struct iscsi_internal {struct iscsi_transport* iscsi_transport; } ;
struct iscsi_endpoint {int dummy; } ;
struct iscsi_cls_session {int sid; int creator; } ;
struct Scsi_Host {int host_no; } ;
typedef int pid_t ;


 int ENOMEM ;
 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;
 struct iscsi_cls_session* stub1 (struct iscsi_endpoint*,int ,int ,int ) ;

__attribute__((used)) static int
iscsi_if_create_session(struct iscsi_internal *priv, struct iscsi_endpoint *ep,
   struct iscsi_uevent *ev, pid_t pid,
   uint32_t initial_cmdsn, uint16_t cmds_max,
   uint16_t queue_depth)
{
 struct iscsi_transport *transport = priv->iscsi_transport;
 struct iscsi_cls_session *session;
 struct Scsi_Host *shost;

 session = transport->create_session(ep, cmds_max, queue_depth,
         initial_cmdsn);
 if (!session)
  return -ENOMEM;

 session->creator = pid;
 shost = iscsi_session_to_shost(session);
 ev->r.c_session_ret.host_no = shost->host_no;
 ev->r.c_session_ret.sid = session->sid;
 ISCSI_DBG_TRANS_SESSION(session,
    "Completed creating transport session\n");
 return 0;
}
