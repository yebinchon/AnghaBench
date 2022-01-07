
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int WL_ON ;
 int store_status (char const*,size_t,int ,int ) ;
 int wl_switch_handle ;

__attribute__((used)) static ssize_t store_wlan(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 return store_status(buf, count, wl_switch_handle, WL_ON);
}
