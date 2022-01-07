
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int mdio_bus; } ;


 int MDIOBUS_INITED ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_flag_clear (struct tg3*,int ) ;

__attribute__((used)) static void tg3_mdio_fini(struct tg3 *tp)
{
 if (tg3_flag(tp, MDIOBUS_INITED)) {
  tg3_flag_clear(tp, MDIOBUS_INITED);
  mdiobus_unregister(tp->mdio_bus);
  mdiobus_free(tp->mdio_bus);
 }
}
