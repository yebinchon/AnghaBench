
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct firmware {int size; int data; } ;
struct ethtool_flash {char* data; } ;
struct adapter {int pdev_dev; } ;


 int dev_info (int ,char*,char*) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int ) ;
 int t4_load_fw (struct adapter*,int ,int ) ;

__attribute__((used)) static int set_flash(struct net_device *netdev, struct ethtool_flash *ef)
{
 int ret;
 const struct firmware *fw;
 struct adapter *adap = netdev2adap(netdev);

 ef->data[sizeof(ef->data) - 1] = '\0';
 ret = request_firmware(&fw, ef->data, adap->pdev_dev);
 if (ret < 0)
  return ret;

 ret = t4_load_fw(adap, fw->data, fw->size);
 release_firmware(fw);
 if (!ret)
  dev_info(adap->pdev_dev, "loaded firmware %s\n", ef->data);
 return ret;
}
