
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dev; } ;


 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*) ;
 int ISCSI_KEVENT_DESTROY_SESSION ;
 int iscsi_session_event (struct iscsi_cls_session*,int ) ;
 int put_device (int *) ;

void iscsi_free_session(struct iscsi_cls_session *session)
{
 ISCSI_DBG_TRANS_SESSION(session, "Freeing session\n");
 iscsi_session_event(session, ISCSI_KEVENT_DESTROY_SESSION);
 put_device(&session->dev);
}
