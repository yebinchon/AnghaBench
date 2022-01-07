
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {unsigned int target_id; int sess_list; int dev; int sid; } ;
struct iscsi_cls_host {int dummy; } ;
struct Scsi_Host {int shost_gendev; struct iscsi_cls_host* shost_data; } ;


 int EOVERFLOW ;
 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*) ;
 int ISCSI_KEVENT_CREATE_SESSION ;
 unsigned int ISCSI_MAX_TARGET ;
 int KERN_ERR ;
 int atomic_add_return (int,int *) ;
 int dev_set_name (int *,char*,int ) ;
 int device_add (int *) ;
 int device_for_each_child (int *,unsigned int*,int ) ;
 int iscsi_cls_session_printk (int ,struct iscsi_cls_session*,char*,...) ;
 int iscsi_get_next_target_id ;
 int iscsi_session_event (struct iscsi_cls_session*,int ) ;
 int iscsi_session_nr ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;
 int list_add (int *,int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int sesslist ;
 int sesslock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transport_register_device (int *) ;

int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
{
 struct Scsi_Host *shost = iscsi_session_to_shost(session);
 struct iscsi_cls_host *ihost;
 unsigned long flags;
 unsigned int id = target_id;
 int err;

 ihost = shost->shost_data;
 session->sid = atomic_add_return(1, &iscsi_session_nr);

 if (id == ISCSI_MAX_TARGET) {
  for (id = 0; id < ISCSI_MAX_TARGET; id++) {
   err = device_for_each_child(&shost->shost_gendev, &id,
          iscsi_get_next_target_id);
   if (!err)
    break;
  }

  if (id == ISCSI_MAX_TARGET) {
   iscsi_cls_session_printk(KERN_ERR, session,
       "Too many iscsi targets. Max "
       "number of targets is %d.\n",
       ISCSI_MAX_TARGET - 1);
   err = -EOVERFLOW;
   goto release_host;
  }
 }
 session->target_id = id;

 dev_set_name(&session->dev, "session%u", session->sid);
 err = device_add(&session->dev);
 if (err) {
  iscsi_cls_session_printk(KERN_ERR, session,
      "could not register session's dev\n");
  goto release_host;
 }
 transport_register_device(&session->dev);

 spin_lock_irqsave(&sesslock, flags);
 list_add(&session->sess_list, &sesslist);
 spin_unlock_irqrestore(&sesslock, flags);

 iscsi_session_event(session, ISCSI_KEVENT_CREATE_SESSION);
 ISCSI_DBG_TRANS_SESSION(session, "Completed session adding\n");
 return 0;

release_host:
 scsi_host_put(shost);
 return err;
}
