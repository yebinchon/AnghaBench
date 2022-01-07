
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_bus {int mutex; scalar_t__ opened; int (* close ) (struct pmac_i2c_bus*) ;} ;


 int WARN_ON (int) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pmac_i2c_bus*) ;

void pmac_i2c_close(struct pmac_i2c_bus *bus)
{
 WARN_ON(!bus->opened);
 if (bus->close)
  bus->close(bus);
 bus->opened = 0;
 mutex_unlock(&bus->mutex);
}
