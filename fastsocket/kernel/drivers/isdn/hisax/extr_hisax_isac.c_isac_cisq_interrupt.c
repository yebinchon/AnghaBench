
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {unsigned char (* read_isac ) (struct isac*,int ) ;int l1m; } ;


 int DBG (int ,char*,unsigned char) ;
 int DBG_IRQ ;
 int DBG_WARN ;
 int FsmEvent (int *,unsigned char,int *) ;
 int ISAC_CIR0 ;
 unsigned char ISAC_CIR0_CIC0 ;
 unsigned char ISAC_CIR0_CIC1 ;
 int ISAC_CIR1 ;
 unsigned char stub1 (struct isac*,int ) ;
 unsigned char stub2 (struct isac*,int ) ;

__attribute__((used)) static inline void isac_cisq_interrupt(struct isac *isac)
{
 unsigned char val;

 val = isac->read_isac(isac, ISAC_CIR0);
 DBG(DBG_IRQ, "CIR0 %#x", val);
 if (val & ISAC_CIR0_CIC0) {
  DBG(DBG_IRQ, "CODR0 %#x", (val >> 2) & 0xf);
  FsmEvent(&isac->l1m, (val >> 2) & 0xf, ((void*)0));
 }
 if (val & ISAC_CIR0_CIC1) {
  val = isac->read_isac(isac, ISAC_CIR1);
  DBG(DBG_WARN, "ISAC CIR1 %#x", val );
 }
}
