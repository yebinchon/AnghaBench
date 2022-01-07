
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_bus {int polled; int opened; int (* open ) (struct pmac_i2c_bus*) ;int mutex; int mode; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pmac_i2c_force_poll ;
 int pmac_i2c_mode_std ;
 int stub1 (struct pmac_i2c_bus*) ;

int pmac_i2c_open(struct pmac_i2c_bus *bus, int polled)
{
 int rc;

 mutex_lock(&bus->mutex);
 bus->polled = polled || pmac_i2c_force_poll;
 bus->opened = 1;
 bus->mode = pmac_i2c_mode_std;
 if (bus->open && (rc = bus->open(bus)) != 0) {
  bus->opened = 0;
  mutex_unlock(&bus->mutex);
  return rc;
 }
 return 0;
}
