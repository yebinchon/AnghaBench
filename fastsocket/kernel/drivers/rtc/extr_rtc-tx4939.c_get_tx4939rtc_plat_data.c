
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx4939rtc_plat_data {int dummy; } ;
struct device {int dummy; } ;


 struct tx4939rtc_plat_data* platform_get_drvdata (int ) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static struct tx4939rtc_plat_data *get_tx4939rtc_plat_data(struct device *dev)
{
 return platform_get_drvdata(to_platform_device(dev));
}
