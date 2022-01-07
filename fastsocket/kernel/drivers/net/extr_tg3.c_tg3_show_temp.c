
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int temperature ;
struct tg3 {int lock; } ;
struct sensor_device_attribute {int index; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct tg3* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sprintf (char*,char*,int) ;
 int tg3_ape_scratchpad_read (struct tg3*,int*,int ,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t tg3_show_temp(struct device *dev,
        struct device_attribute *devattr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct tg3 *tp = netdev_priv(netdev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 u32 temperature;

 spin_lock_bh(&tp->lock);
 tg3_ape_scratchpad_read(tp, &temperature, attr->index,
    sizeof(temperature));
 spin_unlock_bh(&tp->lock);
 return sprintf(buf, "%u\n", temperature);
}
