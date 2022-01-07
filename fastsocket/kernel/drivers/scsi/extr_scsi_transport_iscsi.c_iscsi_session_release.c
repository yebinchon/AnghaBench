
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*) ;
 struct iscsi_cls_session* iscsi_dev_to_session (struct device*) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;
 int kfree (struct iscsi_cls_session*) ;
 int scsi_host_put (struct Scsi_Host*) ;

__attribute__((used)) static void iscsi_session_release(struct device *dev)
{
 struct iscsi_cls_session *session = iscsi_dev_to_session(dev);
 struct Scsi_Host *shost;

 shost = iscsi_session_to_shost(session);
 scsi_host_put(shost);
 ISCSI_DBG_TRANS_SESSION(session, "Completing session release\n");
 kfree(session);
}
