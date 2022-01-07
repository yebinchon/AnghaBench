
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mii_bus {int dummy; } ;


 int clock_out (struct mii_bus*,int) ;
 int mdio_active (struct mii_bus*) ;

__attribute__((used)) static void bitbang_pre(struct mii_bus *bus, int read, u8 addr, u8 reg)
{
 int i;


 mdio_active(bus);
 for (i = 0; i < 40; i++) {
  clock_out(bus, 1);
 }


 clock_out(bus, 0);
 clock_out(bus, 1);

 clock_out(bus, read);
 clock_out(bus, !read);


 for (i = 0; i < 5; i++) {
  clock_out(bus, (addr & 0x10) != 0);
  addr <<= 1;
 }


 for (i = 0; i < 5; i++) {
  clock_out(bus, (reg & 0x10) != 0);
  reg <<= 1;
 }
}
