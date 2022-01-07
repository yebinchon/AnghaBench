
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int brdnr; int panelnr; int portnr; } ;


 int CCR ;
 int CCR_MAXWAIT ;
 int printk (char*,int ,int ,int ) ;
 scalar_t__ stl_cd1400getreg (struct stlport*,int ) ;

__attribute__((used)) static void stl_cd1400ccrwait(struct stlport *portp)
{
 int i;

 for (i = 0; i < CCR_MAXWAIT; i++)
  if (stl_cd1400getreg(portp, CCR) == 0)
   return;

 printk("STALLION: cd1400 not responding, port=%d panel=%d brd=%d\n",
  portp->portnr, portp->panelnr, portp->brdnr);
}
