
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int active_metric_id; } ;
struct mrvl_meshie {TYPE_1__ val; } ;
struct mrvl_mesh_defaults {int meshie; } ;
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_config {int * data; int length; } ;
typedef int ssize_t ;
typedef int cmd ;
struct TYPE_4__ {struct lbs_private* ml_priv; } ;


 int CMD_ACT_MESH_CONFIG_SET ;
 int CMD_TYPE_MESH_SET_MESH_IE ;
 int EINVAL ;
 int cpu_to_le16 (int) ;
 int lbs_mesh_config_send (struct lbs_private*,struct cmd_ds_mesh_config*,int ,int ) ;
 int memcpy (struct mrvl_meshie*,int *,int) ;
 int memset (struct cmd_ds_mesh_config*,int ,int) ;
 int mesh_get_default_parameters (struct device*,struct mrvl_mesh_defaults*) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;
 TYPE_2__* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t metric_id_set(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct cmd_ds_mesh_config cmd;
 struct mrvl_mesh_defaults defs;
 struct mrvl_meshie *ie;
 struct lbs_private *priv = to_net_dev(dev)->ml_priv;
 uint32_t datum;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 ret = sscanf(buf, "%d", &datum);
 if ((ret != 1) || (datum > 255))
  return -EINVAL;


 ret = mesh_get_default_parameters(dev, &defs);

 cmd.length = cpu_to_le16(sizeof(struct mrvl_meshie));


 ie = (struct mrvl_meshie *) &cmd.data[0];
 memcpy(ie, &defs.meshie, sizeof(struct mrvl_meshie));

 ie->val.active_metric_id = datum;

 ret = lbs_mesh_config_send(priv, &cmd, CMD_ACT_MESH_CONFIG_SET,
       CMD_TYPE_MESH_SET_MESH_IE);
 if (ret)
  return ret;

 return strlen(buf);
}
