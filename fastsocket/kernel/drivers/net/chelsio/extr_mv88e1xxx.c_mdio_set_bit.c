
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int simple_mdio_read (struct cphy*,int,int*) ;
 int simple_mdio_write (struct cphy*,int,int) ;

__attribute__((used)) static void mdio_set_bit(struct cphy *cphy, int reg, u32 bitval)
{
 u32 val;

 (void) simple_mdio_read(cphy, reg, &val);
 (void) simple_mdio_write(cphy, reg, val | bitval);
}
