
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dummy; } ;


 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*) ;
 int iscsi_free_session (struct iscsi_cls_session*) ;
 int iscsi_remove_session (struct iscsi_cls_session*) ;

int iscsi_destroy_session(struct iscsi_cls_session *session)
{
 iscsi_remove_session(session);
 ISCSI_DBG_TRANS_SESSION(session, "Completing session destruction\n");
 iscsi_free_session(session);
 return 0;
}
