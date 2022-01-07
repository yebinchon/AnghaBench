
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int * networks; int command_timer; scalar_t__ event_fifo; } ;


 int LBS_DEB_MAIN ;
 int del_timer (int *) ;
 int kfifo_free (scalar_t__) ;
 int kfree (int *) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_free_cmd_buffer (struct lbs_private*) ;

__attribute__((used)) static void lbs_free_adapter(struct lbs_private *priv)
{
 lbs_deb_enter(LBS_DEB_MAIN);

 lbs_free_cmd_buffer(priv);
 if (priv->event_fifo)
  kfifo_free(priv->event_fifo);
 del_timer(&priv->command_timer);
 kfree(priv->networks);
 priv->networks = ((void*)0);

 lbs_deb_leave(LBS_DEB_MAIN);
}
