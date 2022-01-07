
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (int ) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static void i2c_client_dev_release(struct device *dev)
{
 kfree(to_i2c_client(dev));
}
