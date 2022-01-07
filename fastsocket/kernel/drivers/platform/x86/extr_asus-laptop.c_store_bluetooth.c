
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BT_ON ;
 int bt_switch_handle ;
 int store_status (char const*,size_t,int ,int ) ;

__attribute__((used)) static ssize_t store_bluetooth(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{
 return store_status(buf, count, bt_switch_handle, BT_ON);
}
