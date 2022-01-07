
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int command_timer; } ;


 int LBTF_DEB_MAIN ;
 int del_timer (int *) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_free_cmd_buffer (struct lbtf_private*) ;

__attribute__((used)) static void lbtf_free_adapter(struct lbtf_private *priv)
{
 lbtf_deb_enter(LBTF_DEB_MAIN);
 lbtf_free_cmd_buffer(priv);
 del_timer(&priv->command_timer);
 lbtf_deb_leave(LBTF_DEB_MAIN);
}
