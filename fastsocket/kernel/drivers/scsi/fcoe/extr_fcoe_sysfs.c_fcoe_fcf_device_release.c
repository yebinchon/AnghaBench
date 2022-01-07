
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_fcf_device {int dummy; } ;
struct device {int dummy; } ;


 struct fcoe_fcf_device* dev_to_fcf (struct device*) ;
 int kfree (struct fcoe_fcf_device*) ;

__attribute__((used)) static void fcoe_fcf_device_release(struct device *dev)
{
 struct fcoe_fcf_device *fcf = dev_to_fcf(dev);
 kfree(fcf);
}
