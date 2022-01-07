
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbtf_private {int mac_control; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_mac_control {TYPE_1__ hdr; scalar_t__ reserved; void* action; } ;
typedef int cmd ;


 int CMD_MAC_CONTROL ;
 int LBTF_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbtf_cmd_async (struct lbtf_private*,int ,TYPE_1__*,int) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;

void lbtf_set_mac_control(struct lbtf_private *priv)
{
 struct cmd_ds_mac_control cmd;
 lbtf_deb_enter(LBTF_DEB_CMD);

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(priv->mac_control);
 cmd.reserved = 0;

 lbtf_cmd_async(priv, CMD_MAC_CONTROL,
  &cmd.hdr, sizeof(cmd));

 lbtf_deb_leave(LBTF_DEB_CMD);
}
