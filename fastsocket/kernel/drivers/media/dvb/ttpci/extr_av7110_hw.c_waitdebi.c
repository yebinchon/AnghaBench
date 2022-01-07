
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int dummy; } ;


 int DEBINOSWAP ;
 int ETIMEDOUT ;
 int dprintk (int,char*,struct av7110*) ;
 int irdebi (struct av7110*,int ,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int waitdebi(struct av7110 *av7110, int adr, int state)
{
 int k;

 dprintk(4, "%p\n", av7110);

 for (k = 0; k < 100; k++) {
  if (irdebi(av7110, DEBINOSWAP, adr, 0, 2) == state)
   return 0;
  udelay(5);
 }
 return -ETIMEDOUT;
}
