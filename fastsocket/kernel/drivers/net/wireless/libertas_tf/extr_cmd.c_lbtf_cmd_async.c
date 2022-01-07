
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lbtf_private {int dummy; } ;
struct cmd_header {int dummy; } ;


 int LBTF_DEB_CMD ;
 int __lbtf_cmd_async (struct lbtf_private*,int ,struct cmd_header*,int,int *,int ) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;

void lbtf_cmd_async(struct lbtf_private *priv, uint16_t command,
 struct cmd_header *in_cmd, int in_cmd_size)
{
 lbtf_deb_enter(LBTF_DEB_CMD);
 __lbtf_cmd_async(priv, command, in_cmd, in_cmd_size, ((void*)0), 0);
 lbtf_deb_leave(LBTF_DEB_CMD);
}
