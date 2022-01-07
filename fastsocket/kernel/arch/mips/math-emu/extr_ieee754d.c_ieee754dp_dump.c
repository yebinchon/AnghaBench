
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bits; } ;
typedef TYPE_1__ ieee754dp ;


 scalar_t__ DPBEXP (TYPE_1__) ;
 int DPMANT (TYPE_1__) ;
 int DPSIGN (TYPE_1__) ;
 scalar_t__ DP_EBIAS ;
 int DP_FBITS ;
 int DP_MBIT (int) ;






 int ieee754dp_class (TYPE_1__) ;
 int printk (char*,...) ;

ieee754dp ieee754dp_dump(char *m, ieee754dp x)
{
 int i;

 printk("%s", m);
 printk("<%08x,%08x>\n", (unsigned) (x.bits >> 32),
        (unsigned) x.bits);
 printk("\t=");
 switch (ieee754dp_class(x)) {
 case 130:
 case 129:
  printk("Nan %c", DPSIGN(x) ? '-' : '+');
  for (i = DP_FBITS - 1; i >= 0; i--)
   printk("%c", DPMANT(x) & DP_MBIT(i) ? '1' : '0');
  break;
 case 132:
  printk("%cInfinity", DPSIGN(x) ? '-' : '+');
  break;
 case 128:
  printk("%cZero", DPSIGN(x) ? '-' : '+');
  break;
 case 133:
  printk("%c0.", DPSIGN(x) ? '-' : '+');
  for (i = DP_FBITS - 1; i >= 0; i--)
   printk("%c", DPMANT(x) & DP_MBIT(i) ? '1' : '0');
  printk("e%d", DPBEXP(x) - DP_EBIAS);
  break;
 case 131:
  printk("%c1.", DPSIGN(x) ? '-' : '+');
  for (i = DP_FBITS - 1; i >= 0; i--)
   printk("%c", DPMANT(x) & DP_MBIT(i) ? '1' : '0');
  printk("e%d", DPBEXP(x) - DP_EBIAS);
  break;
 default:
  printk("Illegal/Unknown IEEE754 value class");
 }
 printk("\n");
 return x;
}
