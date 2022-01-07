
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_iucv_private {scalar_t__ sndbuf_len; int iucv_state; int tty_state; int tty_inqueue; int tty_outqueue; } ;


 int IUCV_DISCONN ;
 int TTY_CLOSED ;
 int destroy_tty_buffer_list (int *) ;

__attribute__((used)) static void hvc_iucv_cleanup(struct hvc_iucv_private *priv)
{
 destroy_tty_buffer_list(&priv->tty_outqueue);
 destroy_tty_buffer_list(&priv->tty_inqueue);

 priv->tty_state = TTY_CLOSED;
 priv->iucv_state = IUCV_DISCONN;

 priv->sndbuf_len = 0;
}
