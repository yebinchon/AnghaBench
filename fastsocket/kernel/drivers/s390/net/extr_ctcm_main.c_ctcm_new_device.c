
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int name; int dev; } ;
struct ctcm_priv {int protocol; TYPE_2__** channel; TYPE_1__* fsm; int buffer_size; } ;
struct ccwgroup_device {struct ccw_device** cdev; int dev; } ;
struct ccw_device {int dev; int id; } ;
typedef enum ctcm_channel_types { ____Placeholder_ctcm_channel_types } ctcm_channel_types ;
struct TYPE_5__ {int id; int max_bufsize; int protocol; struct net_device* netdev; } ;
struct TYPE_4__ {int name; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,char*,int,...) ;
 int CTCM_FUNTAIL ;
 int CTCM_ID_SIZE ;
 int CTC_DBF_INFO ;
 int CTC_DBF_NOTICE ;
 int ENODEV ;
 int READ ;
 int SETUP ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TRACE ;
 int WRITE ;
 int add_channel (struct ccw_device*,int,struct ctcm_priv*) ;
 int ccw_device_set_offline (struct ccw_device*) ;
 int ccw_device_set_online (struct ccw_device*) ;
 int channel_free (TYPE_2__*) ;
 TYPE_2__* channel_get (int,char*,int) ;
 scalar_t__ ctcm_add_attributes (int *) ;
 int ctcm_free_netdevice (struct net_device*) ;
 struct net_device* ctcm_init_netdevice (struct ctcm_priv*) ;
 struct ctcm_priv* dev_get_drvdata (int *) ;
 int dev_info (int *,char*,int ,int ,int ) ;
 char* dev_name (int *) ;
 int get_channel_type (int *) ;
 scalar_t__ register_netdev (struct net_device*) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcpy (int ,int ,int) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ctcm_new_device(struct ccwgroup_device *cgdev)
{
 char read_id[CTCM_ID_SIZE];
 char write_id[CTCM_ID_SIZE];
 int direction;
 enum ctcm_channel_types type;
 struct ctcm_priv *priv;
 struct net_device *dev;
 struct ccw_device *cdev0;
 struct ccw_device *cdev1;
 int ret;

 priv = dev_get_drvdata(&cgdev->dev);
 if (!priv)
  return -ENODEV;

 cdev0 = cgdev->cdev[0];
 cdev1 = cgdev->cdev[1];

 type = get_channel_type(&cdev0->id);

 snprintf(read_id, CTCM_ID_SIZE, "ch-%s", dev_name(&cdev0->dev));
 snprintf(write_id, CTCM_ID_SIZE, "ch-%s", dev_name(&cdev1->dev));

 ret = add_channel(cdev0, type, priv);
 if (ret)
  return ret;
 ret = add_channel(cdev1, type, priv);
 if (ret)
  return ret;

 ret = ccw_device_set_online(cdev0);
 if (ret != 0) {

  CTCM_DBF_TEXT_(TRACE, CTC_DBF_NOTICE,
   "%s(%s) set_online rc=%d",
    CTCM_FUNTAIL, read_id, ret);
 }

 ret = ccw_device_set_online(cdev1);
 if (ret != 0) {

  CTCM_DBF_TEXT_(TRACE, CTC_DBF_NOTICE,
   "%s(%s) set_online rc=%d",
    CTCM_FUNTAIL, write_id, ret);
 }

 dev = ctcm_init_netdevice(priv);
 if (dev == ((void*)0))
   goto out;

 for (direction = READ; direction <= WRITE; direction++) {
  priv->channel[direction] =
      channel_get(type, direction == READ ? read_id : write_id,
    direction);
  if (priv->channel[direction] == ((void*)0)) {
   if (direction == WRITE)
    channel_free(priv->channel[READ]);
   goto out_dev;
  }
  priv->channel[direction]->netdev = dev;
  priv->channel[direction]->protocol = priv->protocol;
  priv->channel[direction]->max_bufsize = priv->buffer_size;
 }

 SET_NETDEV_DEV(dev, &cgdev->dev);

 if (register_netdev(dev))
   goto out_dev;

 if (ctcm_add_attributes(&cgdev->dev)) {
  unregister_netdev(dev);
   goto out_dev;
 }

 strlcpy(priv->fsm->name, dev->name, sizeof(priv->fsm->name));

 dev_info(&dev->dev,
  "setup OK : r/w = %s/%s, protocol : %d\n",
   priv->channel[READ]->id,
   priv->channel[WRITE]->id, priv->protocol);

 CTCM_DBF_TEXT_(SETUP, CTC_DBF_INFO,
  "setup(%s) OK : r/w = %s/%s, protocol : %d", dev->name,
   priv->channel[READ]->id,
   priv->channel[WRITE]->id, priv->protocol);

 return 0;
out_dev:
 ctcm_free_netdevice(dev);
out:
 ccw_device_set_offline(cgdev->cdev[1]);
 ccw_device_set_offline(cgdev->cdev[0]);

 return -ENODEV;
}
