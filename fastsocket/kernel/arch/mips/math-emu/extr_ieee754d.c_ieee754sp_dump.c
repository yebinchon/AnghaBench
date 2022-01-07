
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ bits; } ;
typedef TYPE_1__ ieee754sp ;
 scalar_t__ SPBEXP (TYPE_1__) ;
 int SPMANT (TYPE_1__) ;
 int SPSIGN (TYPE_1__) ;
 scalar_t__ SP_EBIAS ;
 int SP_FBITS ;
 int SP_MBIT (int) ;
 int ieee754sp_class (TYPE_1__) ;
 int printk (char*,...) ;

ieee754sp ieee754sp_dump(char *m, ieee754sp x)
{
 int i;

 printk("%s=", m);
 printk("<%08x>\n", (unsigned) x.bits);
 printk("\t=");
 switch (ieee754sp_class(x)) {
 case 130:
 case 129:
  printk("Nan %c", SPSIGN(x) ? '-' : '+');
  for (i = SP_FBITS - 1; i >= 0; i--)
   printk("%c", SPMANT(x) & SP_MBIT(i) ? '1' : '0');
  break;
 case 132:
  printk("%cInfinity", SPSIGN(x) ? '-' : '+');
  break;
 case 128:
  printk("%cZero", SPSIGN(x) ? '-' : '+');
  break;
 case 133:
  printk("%c0.", SPSIGN(x) ? '-' : '+');
  for (i = SP_FBITS - 1; i >= 0; i--)
   printk("%c", SPMANT(x) & SP_MBIT(i) ? '1' : '0');
  printk("e%d", SPBEXP(x) - SP_EBIAS);
  break;
 case 131:
  printk("%c1.", SPSIGN(x) ? '-' : '+');
  for (i = SP_FBITS - 1; i >= 0; i--)
   printk("%c", SPMANT(x) & SP_MBIT(i) ? '1' : '0');
  printk("e%d", SPBEXP(x) - SP_EBIAS);
  break;
 default:
  printk("Illegal/Unknown IEEE754 value class");
 }
 printk("\n");
 return x;
}
