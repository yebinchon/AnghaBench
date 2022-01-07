
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {int dummy; } ;
struct hvc_iucv_private {int lock; scalar_t__ sndbuf_len; int tty_state; int tty_inqueue; int tty_outqueue; } ;


 int TTY_CLOSED ;
 int destroy_tty_buffer_list (int *) ;
 int flush_sndbuf_sync (struct hvc_iucv_private*) ;
 struct hvc_iucv_private* hvc_iucv_get_private (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hvc_iucv_notifier_del(struct hvc_struct *hp, int id)
{
 struct hvc_iucv_private *priv;

 priv = hvc_iucv_get_private(id);
 if (!priv)
  return;

 flush_sndbuf_sync(priv);

 spin_lock_bh(&priv->lock);
 destroy_tty_buffer_list(&priv->tty_outqueue);
 destroy_tty_buffer_list(&priv->tty_inqueue);
 priv->tty_state = TTY_CLOSED;
 priv->sndbuf_len = 0;
 spin_unlock_bh(&priv->lock);
}
