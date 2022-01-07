
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {unsigned int target_id; int lock; } ;
struct device {int dummy; } ;


 int EEXIST ;
 struct iscsi_cls_session* iscsi_dev_to_session (struct device*) ;
 int iscsi_is_session_dev (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iscsi_get_next_target_id(struct device *dev, void *data)
{
 struct iscsi_cls_session *session;
 unsigned long flags;
 int err = 0;

 if (!iscsi_is_session_dev(dev))
  return 0;

 session = iscsi_dev_to_session(dev);
 spin_lock_irqsave(&session->lock, flags);
 if (*((unsigned int *) data) == session->target_id)
  err = -EEXIST;
 spin_unlock_irqrestore(&session->lock, flags);
 return err;
}
