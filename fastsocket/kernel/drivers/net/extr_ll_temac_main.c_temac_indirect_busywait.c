
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int dummy; } ;


 int ETIMEDOUT ;
 int WARN_ON (int) ;
 int XTE_RDY0_HARD_ACS_RDY_MASK ;
 int XTE_RDY0_OFFSET ;
 int jiffies ;
 int msleep (int) ;
 int temac_ior (struct temac_local*,int ) ;

int temac_indirect_busywait(struct temac_local *lp)
{
 long end = jiffies + 2;

 while (!(temac_ior(lp, XTE_RDY0_OFFSET) & XTE_RDY0_HARD_ACS_RDY_MASK)) {
  if (end - jiffies <= 0) {
   WARN_ON(1);
   return -ETIMEDOUT;
  }
  msleep(1);
 }
 return 0;
}
