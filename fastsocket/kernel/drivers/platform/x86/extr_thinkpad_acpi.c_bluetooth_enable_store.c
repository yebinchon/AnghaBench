
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TPACPI_RFK_BLUETOOTH_SW_ID ;
 int tpacpi_rfk_sysfs_enable_store (int ,struct device_attribute*,char const*,size_t) ;

__attribute__((used)) static ssize_t bluetooth_enable_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 return tpacpi_rfk_sysfs_enable_store(TPACPI_RFK_BLUETOOTH_SW_ID,
    attr, buf, count);
}
