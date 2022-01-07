
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_iucv_private {int lock; int tty_outqueue; } ;


 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline int tty_outqueue_empty(struct hvc_iucv_private *priv)
{
 int rc;

 spin_lock_bh(&priv->lock);
 rc = list_empty(&priv->tty_outqueue);
 spin_unlock_bh(&priv->lock);

 return rc;
}
