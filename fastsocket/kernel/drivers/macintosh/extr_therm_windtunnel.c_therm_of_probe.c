
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct of_device {int dummy; } ;


 int g4fan_driver ;
 int i2c_add_driver (int *) ;

__attribute__((used)) static int
therm_of_probe( struct of_device *dev, const struct of_device_id *match )
{
 return i2c_add_driver( &g4fan_driver );
}
