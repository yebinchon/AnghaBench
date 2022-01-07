
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_scan_data {scalar_t__ channel; scalar_t__ id; int lun; } ;
struct iscsi_cls_session {scalar_t__ state; unsigned int target_id; int dev; int lock; } ;
struct iscsi_cls_host {int mutex; } ;
struct device {int dummy; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;


 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*) ;
 unsigned int ISCSI_MAX_TARGET ;
 scalar_t__ ISCSI_SESSION_LOGGED_IN ;
 scalar_t__ SCAN_WILD_CARD ;
 struct iscsi_cls_session* iscsi_dev_to_session (struct device*) ;
 int iscsi_is_session_dev (struct device*) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_scan_target (int *,int ,unsigned int,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iscsi_user_scan_session(struct device *dev, void *data)
{
 struct iscsi_scan_data *scan_data = data;
 struct iscsi_cls_session *session;
 struct Scsi_Host *shost;
 struct iscsi_cls_host *ihost;
 unsigned long flags;
 unsigned int id;

 if (!iscsi_is_session_dev(dev))
  return 0;

 session = iscsi_dev_to_session(dev);

 ISCSI_DBG_TRANS_SESSION(session, "Scanning session\n");

 shost = iscsi_session_to_shost(session);
 ihost = shost->shost_data;

 mutex_lock(&ihost->mutex);
 spin_lock_irqsave(&session->lock, flags);
 if (session->state != ISCSI_SESSION_LOGGED_IN) {
  spin_unlock_irqrestore(&session->lock, flags);
  goto user_scan_exit;
 }
 id = session->target_id;
 spin_unlock_irqrestore(&session->lock, flags);

 if (id != ISCSI_MAX_TARGET) {
  if ((scan_data->channel == SCAN_WILD_CARD ||
       scan_data->channel == 0) &&
      (scan_data->id == SCAN_WILD_CARD ||
       scan_data->id == id))
   scsi_scan_target(&session->dev, 0, id,
      scan_data->lun, 1);
 }

user_scan_exit:
 mutex_unlock(&ihost->mutex);
 ISCSI_DBG_TRANS_SESSION(session, "Completed session scan\n");
 return 0;
}
