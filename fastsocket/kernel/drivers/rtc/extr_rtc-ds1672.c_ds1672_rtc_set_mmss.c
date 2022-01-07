
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ds1672_set_mmss (int ,unsigned long) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static int ds1672_rtc_set_mmss(struct device *dev, unsigned long secs)
{
 return ds1672_set_mmss(to_i2c_client(dev), secs);
}
