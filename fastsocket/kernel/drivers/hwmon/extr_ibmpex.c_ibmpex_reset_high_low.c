
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmpex_bmc_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct ibmpex_bmc_data* dev_get_drvdata (struct device*) ;
 int ibmpex_reset_high_low_data (struct ibmpex_bmc_data*) ;

__attribute__((used)) static ssize_t ibmpex_reset_high_low(struct device *dev,
         struct device_attribute *devattr,
         const char *buf,
         size_t count)
{
 struct ibmpex_bmc_data *data = dev_get_drvdata(dev);

 ibmpex_reset_high_low_data(data);

 return count;
}
