
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int assoc_work; int work_thread; scalar_t__ surpriseremoved; } ;


 int cancel_delayed_work (int *) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static inline void lbs_do_association_work(struct lbs_private *priv)
{
 if (priv->surpriseremoved)
  return;
 cancel_delayed_work(&priv->assoc_work);
 queue_delayed_work(priv->work_thread, &priv->assoc_work, 0);
}
