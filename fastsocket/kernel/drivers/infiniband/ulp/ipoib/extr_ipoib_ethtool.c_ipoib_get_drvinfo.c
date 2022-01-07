
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* ca; } ;
struct ib_device_attr {int fw_ver; } ;
struct ethtool_drvinfo {int driver; int version; int bus_info; int fw_version; } ;
struct TYPE_2__ {int dma_device; } ;


 int GFP_KERNEL ;
 char* dev_name (int ) ;
 int ib_query_device (TYPE_1__*,struct ib_device_attr*) ;
 char* ipoib_driver_version ;
 int kfree (struct ib_device_attr*) ;
 struct ib_device_attr* kmalloc (int,int ) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void ipoib_get_drvinfo(struct net_device *netdev,
         struct ethtool_drvinfo *drvinfo)
{
 struct ipoib_dev_priv *priv = netdev_priv(netdev);
 struct ib_device_attr *attr;

 attr = kmalloc(sizeof(*attr), GFP_KERNEL);
 if (attr && !ib_query_device(priv->ca, attr))
  snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
    "%d.%d.%d", (int)(attr->fw_ver >> 32),
    (int)(attr->fw_ver >> 16) & 0xffff,
    (int)attr->fw_ver & 0xffff);
 kfree(attr);

 strlcpy(drvinfo->bus_info, dev_name(priv->ca->dma_device),
  sizeof(drvinfo->bus_info));

 strlcpy(drvinfo->version, ipoib_driver_version,
  sizeof(drvinfo->version));

 strlcpy(drvinfo->driver, "ib_ipoib", sizeof(drvinfo->driver));
}
