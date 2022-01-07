
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {int dummy; } ;


 int INB (struct sym_hcb*,int ) ;
 int OUTB (struct sym_hcb*,int ,int ) ;
 int SRST ;
 int nc_istat ;
 int nc_mbox1 ;
 int udelay (int) ;

__attribute__((used)) static void sym_chip_reset (struct sym_hcb *np)
{
 OUTB(np, nc_istat, SRST);
 INB(np, nc_mbox1);
 udelay(10);
 OUTB(np, nc_istat, 0);
 INB(np, nc_mbox1);
 udelay(2000);
}
