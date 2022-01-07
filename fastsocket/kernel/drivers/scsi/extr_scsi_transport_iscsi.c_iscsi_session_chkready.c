
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int state; int lock; } ;


 int DID_IMM_RETRY ;
 int DID_NO_CONNECT ;
 int DID_TRANSPORT_FAILFAST ;



 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int iscsi_session_chkready(struct iscsi_cls_session *session)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&session->lock, flags);
 switch (session->state) {
 case 128:
  err = 0;
  break;
 case 130:
  err = DID_IMM_RETRY << 16;
  break;
 case 129:
  err = DID_TRANSPORT_FAILFAST << 16;
  break;
 default:
  err = DID_NO_CONNECT << 16;
  break;
 }
 spin_unlock_irqrestore(&session->lock, flags);
 return err;
}
