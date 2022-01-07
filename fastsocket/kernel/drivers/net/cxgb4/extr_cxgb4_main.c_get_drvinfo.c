
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int bus_info; int version; int driver; } ;
struct TYPE_2__ {scalar_t__ tp_vers; scalar_t__ fw_vers; } ;
struct adapter {TYPE_1__ params; int pdev; } ;


 int DRV_VERSION ;
 int FW_HDR_FW_VER_BUILD_GET (scalar_t__) ;
 int FW_HDR_FW_VER_MAJOR_GET (scalar_t__) ;
 int FW_HDR_FW_VER_MICRO_GET (scalar_t__) ;
 int FW_HDR_FW_VER_MINOR_GET (scalar_t__) ;
 int KBUILD_MODNAME ;
 struct adapter* netdev2adap (struct net_device*) ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,int,int,int,int,int,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct adapter *adapter = netdev2adap(dev);

 strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(adapter->pdev),
  sizeof(info->bus_info));

 if (adapter->params.fw_vers)
  snprintf(info->fw_version, sizeof(info->fw_version),
   "%u.%u.%u.%u, TP %u.%u.%u.%u",
   FW_HDR_FW_VER_MAJOR_GET(adapter->params.fw_vers),
   FW_HDR_FW_VER_MINOR_GET(adapter->params.fw_vers),
   FW_HDR_FW_VER_MICRO_GET(adapter->params.fw_vers),
   FW_HDR_FW_VER_BUILD_GET(adapter->params.fw_vers),
   FW_HDR_FW_VER_MAJOR_GET(adapter->params.tp_vers),
   FW_HDR_FW_VER_MINOR_GET(adapter->params.tp_vers),
   FW_HDR_FW_VER_MICRO_GET(adapter->params.tp_vers),
   FW_HDR_FW_VER_BUILD_GET(adapter->params.tp_vers));
}
