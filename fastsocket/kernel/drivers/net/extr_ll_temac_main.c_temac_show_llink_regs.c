
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int dummy; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct net_device* dev_get_drvdata (struct device*) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 scalar_t__ sprintf (char*,char*,...) ;
 int temac_dma_in32 (struct temac_local*,int) ;

__attribute__((used)) static ssize_t temac_show_llink_regs(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct net_device *ndev = dev_get_drvdata(dev);
 struct temac_local *lp = netdev_priv(ndev);
 int i, len = 0;

 for (i = 0; i < 0x11; i++)
  len += sprintf(buf + len, "%.8x%s", temac_dma_in32(lp, i),
          (i % 8) == 7 ? "\n" : " ");
 len += sprintf(buf + len, "\n");

 return len;
}
