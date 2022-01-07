
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int * pending_assoc_req; int assoc_work; } ;


 int cancel_delayed_work (int *) ;
 int kfree (int *) ;

__attribute__((used)) static inline void lbs_cancel_association_work(struct lbs_private *priv)
{
 cancel_delayed_work(&priv->assoc_work);
 kfree(priv->pending_assoc_req);
 priv->pending_assoc_req = ((void*)0);
}
