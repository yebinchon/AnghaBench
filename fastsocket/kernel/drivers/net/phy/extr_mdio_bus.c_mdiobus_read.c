
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int (* read ) (struct mii_bus*,int,int ) ;int mdio_lock; } ;


 int BUG_ON (int ) ;
 int in_interrupt () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mii_bus*,int,int ) ;

int mdiobus_read(struct mii_bus *bus, int addr, u16 regnum)
{
 int retval;

 BUG_ON(in_interrupt());

 mutex_lock(&bus->mdio_lock);
 retval = bus->read(bus, addr, regnum);
 mutex_unlock(&bus->mdio_lock);

 return retval;
}
