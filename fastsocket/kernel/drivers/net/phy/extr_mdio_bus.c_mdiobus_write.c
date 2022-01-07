
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int ,int ) ;int mdio_lock; } ;


 int BUG_ON (int ) ;
 int in_interrupt () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mii_bus*,int,int ,int ) ;

int mdiobus_write(struct mii_bus *bus, int addr, u16 regnum, u16 val)
{
 int err;

 BUG_ON(in_interrupt());

 mutex_lock(&bus->mdio_lock);
 err = bus->write(bus, addr, regnum, val);
 mutex_unlock(&bus->mdio_lock);

 return err;
}
