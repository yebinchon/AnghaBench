
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int md_dump_size; } ;
struct netxen_adapter {TYPE_1__ mdump; scalar_t__ fw_mdump_rdy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct netxen_adapter* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
netxen_show_fwdump_size(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct netxen_adapter *adapter = dev_get_drvdata(dev);
 u32 size = 0;

 if (adapter->fw_mdump_rdy)
  size = adapter->mdump.md_dump_size;
 return sprintf(buf, "%u\n", size);
}
