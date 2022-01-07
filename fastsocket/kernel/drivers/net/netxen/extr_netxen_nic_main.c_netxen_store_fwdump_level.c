
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long md_capture_mask; } ;
struct netxen_adapter {TYPE_2__ mdump; TYPE_1__* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {struct device dev; } ;


 int ARRAY_SIZE (unsigned long*) ;
 size_t EINVAL ;
 unsigned long* FW_DUMP_LEVELS ;
 struct netxen_adapter* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,unsigned long) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 unsigned long simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t
netxen_store_fwdump_level(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t size)
{
 int i;
 unsigned long int val;
 struct netxen_adapter *adapter = dev_get_drvdata(dev);

 val = simple_strtoul(buf, ((void*)0), 16);

 for (i = 0; i < ARRAY_SIZE(FW_DUMP_LEVELS); i++) {
  if (val == FW_DUMP_LEVELS[i]) {
   rtnl_lock();
   adapter->mdump.md_capture_mask = val;
   rtnl_unlock();
   dev_info(&adapter->pdev->dev,
    "Driver mask changed to: 0x%x\n",
    adapter->mdump.md_capture_mask);
   return size;
  }
 }
 dev_info(dev, "Invalid Dump Level: 0x%lx\n",
  (unsigned long int) val);
 return -EINVAL;
}
