
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_tcb {int dummy; } ;
struct sym_hcb {int dummy; } ;
struct sym_ccb {int dummy; } ;


 int HS_BUSY ;
 int HS_PRT ;
 int OUTB (struct sym_hcb*,int ,int ) ;
 int sym_nego_default (struct sym_hcb*,struct sym_tcb*,struct sym_ccb*) ;

__attribute__((used)) static void sym_nego_rejected(struct sym_hcb *np, struct sym_tcb *tp, struct sym_ccb *cp)
{
 sym_nego_default(np, tp, cp);
 OUTB(np, HS_PRT, HS_BUSY);
}
