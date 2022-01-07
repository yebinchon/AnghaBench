
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int dummy; } ;
struct ethtool_eeprom {scalar_t__ offset; scalar_t__ len; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_eeprom_access {int value; void* len; void* offset; void* action; TYPE_1__ hdr; } ;


 int CMD_802_11_EEPROM_ACCESS ;
 int CMD_ACT_GET ;
 int EINVAL ;
 int LBS_DEB_ETHTOOL ;
 scalar_t__ LBS_EEPROM_LEN ;
 int LBS_EEPROM_READ_LEN ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_eeprom_access*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int lbs_ethtool_get_eeprom(struct net_device *dev,
                                  struct ethtool_eeprom *eeprom, u8 * bytes)
{
 struct lbs_private *priv = dev->ml_priv;
 struct cmd_ds_802_11_eeprom_access cmd;
 int ret;

 lbs_deb_enter(LBS_DEB_ETHTOOL);

 if (eeprom->offset + eeprom->len > LBS_EEPROM_LEN ||
     eeprom->len > LBS_EEPROM_READ_LEN) {
  ret = -EINVAL;
  goto out;
 }

 cmd.hdr.size = cpu_to_le16(sizeof(struct cmd_ds_802_11_eeprom_access) -
  LBS_EEPROM_READ_LEN + eeprom->len);
 cmd.action = cpu_to_le16(CMD_ACT_GET);
 cmd.offset = cpu_to_le16(eeprom->offset);
 cmd.len = cpu_to_le16(eeprom->len);
 ret = lbs_cmd_with_response(priv, CMD_802_11_EEPROM_ACCESS, &cmd);
 if (!ret)
  memcpy(bytes, cmd.value, eeprom->len);

out:
 lbs_deb_leave_args(LBS_DEB_ETHTOOL, "ret %d", ret);
        return ret;
}
