
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {unsigned char (* read_isac ) (struct isac*,int ) ;int l1m; } ;


 int DBG (int ,char*,unsigned char) ;
 int DBG_IRQ ;
 int FsmEvent (int *,unsigned char,int *) ;
 int ISACSX_CIR0 ;
 unsigned char ISACSX_CIR0_CIC0 ;
 unsigned char stub1 (struct isac*,int ) ;

__attribute__((used)) static inline void isacsx_cic_interrupt(struct isac *isac)
{
 unsigned char val;

 val = isac->read_isac(isac, ISACSX_CIR0);
 DBG(DBG_IRQ, "CIR0 %#x", val);
 if (val & ISACSX_CIR0_CIC0) {
  DBG(DBG_IRQ, "CODR0 %#x", val >> 4);
  FsmEvent(&isac->l1m, val >> 4, ((void*)0));
 }
}
