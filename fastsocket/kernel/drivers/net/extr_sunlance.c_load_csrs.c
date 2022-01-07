
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lance_private {int busmaster_regval; scalar_t__ lregs; int init_block_dvma; scalar_t__ pio_buffer; } ;


 int LANCE_ADDR (int ) ;
 int LE_CSR0 ;
 int LE_CSR1 ;
 int LE_CSR2 ;
 int LE_CSR3 ;
 scalar_t__ RAP ;
 scalar_t__ RDP ;
 int sbus_writew (int,scalar_t__) ;

__attribute__((used)) static void load_csrs(struct lance_private *lp)
{
 u32 leptr;

 if (lp->pio_buffer)
  leptr = 0;
 else
  leptr = LANCE_ADDR(lp->init_block_dvma);

 sbus_writew(LE_CSR1, lp->lregs + RAP);
 sbus_writew(leptr & 0xffff, lp->lregs + RDP);
 sbus_writew(LE_CSR2, lp->lregs + RAP);
 sbus_writew(leptr >> 16, lp->lregs + RDP);
 sbus_writew(LE_CSR3, lp->lregs + RAP);
 sbus_writew(lp->busmaster_regval, lp->lregs + RDP);


 sbus_writew(LE_CSR0, lp->lregs + RAP);
}
