
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_private {int busmaster_regval; struct lance_init_block* lance_init_block; } ;
struct lance_init_block {int dummy; } ;


 int LANCE_ADDR (struct lance_init_block volatile*) ;
 int LE_CSR0 ;
 int LE_CSR1 ;
 int LE_CSR2 ;
 int LE_CSR3 ;
 int WRITERAP (struct lance_private*,int ) ;
 int WRITERDP (struct lance_private*,int) ;

__attribute__((used)) static void load_csrs (struct lance_private *lp)
{
        volatile struct lance_init_block *aib = lp->lance_init_block;
        int leptr;

        leptr = LANCE_ADDR (aib);

        WRITERAP(lp, LE_CSR1);
        WRITERDP(lp, leptr & 0xFFFF);
        WRITERAP(lp, LE_CSR2);
        WRITERDP(lp, leptr >> 16);
        WRITERAP(lp, LE_CSR3);
        WRITERDP(lp, lp->busmaster_regval);


        WRITERAP(lp, LE_CSR0);
}
