
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {struct flexcop_device* bus_specific; } ;


 int kfree (struct flexcop_device*) ;

void flexcop_device_kfree(struct flexcop_device *fc)
{
 kfree(fc->bus_specific);
 kfree(fc);
}
