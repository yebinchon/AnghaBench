
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w83627hf_data {int vrm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t
store_vrm_reg(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct w83627hf_data *data = dev_get_drvdata(dev);
 u32 val;

 val = simple_strtoul(buf, ((void*)0), 10);
 data->vrm = val;

 return count;
}
