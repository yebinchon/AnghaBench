
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_config {void* length; int * data; } ;
typedef int ssize_t ;
typedef int cmd ;
typedef void* __le16 ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;


 int CMD_ACT_MESH_CONFIG_SET ;
 int CMD_TYPE_MESH_SET_DEF_CHANNEL ;
 int EINVAL ;
 void* cpu_to_le16 (int) ;
 int lbs_mesh_config_send (struct lbs_private*,struct cmd_ds_mesh_config*,int ,int ) ;
 int memset (struct cmd_ds_mesh_config*,int ,int) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;
 TYPE_1__* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t channel_set(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct lbs_private *priv = to_net_dev(dev)->ml_priv;
 struct cmd_ds_mesh_config cmd;
 uint32_t datum;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 ret = sscanf(buf, "%d", &datum);
 if (ret != 1 || datum < 1 || datum > 11)
  return -EINVAL;

 *((__le16 *)&cmd.data[0]) = cpu_to_le16(datum);
 cmd.length = cpu_to_le16(sizeof(uint16_t));
 ret = lbs_mesh_config_send(priv, &cmd, CMD_ACT_MESH_CONFIG_SET,
       CMD_TYPE_MESH_SET_DEF_CHANNEL);
 if (ret)
  return ret;

 return strlen(buf);
}
