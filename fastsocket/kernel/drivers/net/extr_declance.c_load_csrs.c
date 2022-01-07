
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct lance_regs {int rap; int rdp; } ;
struct lance_private {int busmaster_regval; struct lance_regs* ll; } ;


 int LE_CSR0 ;
 int LE_CSR1 ;
 int LE_CSR2 ;
 int LE_CSR3 ;
 int writereg (int *,int) ;

__attribute__((used)) static void load_csrs(struct lance_private *lp)
{
 volatile struct lance_regs *ll = lp->ll;
 uint leptr;




 leptr = 0;

 writereg(&ll->rap, LE_CSR1);
 writereg(&ll->rdp, (leptr & 0xFFFF));
 writereg(&ll->rap, LE_CSR2);
 writereg(&ll->rdp, leptr >> 16);
 writereg(&ll->rap, LE_CSR3);
 writereg(&ll->rdp, lp->busmaster_regval);


 writereg(&ll->rap, LE_CSR0);
}
