
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int t3_mdio_read (struct cphy*,int,int,unsigned int*) ;
 int t3_mdio_write (struct cphy*,int,int,unsigned int) ;

int t3_mdio_change_bits(struct cphy *phy, int mmd, int reg, unsigned int clear,
   unsigned int set)
{
 int ret;
 unsigned int val;

 ret = t3_mdio_read(phy, mmd, reg, &val);
 if (!ret) {
  val &= ~clear;
  ret = t3_mdio_write(phy, mmd, reg, val | set);
 }
 return ret;
}
