
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct of_device {int node; } ;


 int fcu_lookup_fans (int ) ;
 int i2c_add_driver (int *) ;
 int state ;
 int state_detached ;
 int therm_pm72_driver ;

__attribute__((used)) static int fcu_of_probe(struct of_device* dev, const struct of_device_id *match)
{
 state = state_detached;


 fcu_lookup_fans(dev->node);


 return i2c_add_driver(&therm_pm72_driver);
}
