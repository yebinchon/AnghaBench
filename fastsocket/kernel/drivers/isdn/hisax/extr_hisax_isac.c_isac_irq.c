
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {unsigned char (* read_isac ) (struct isac*,int ) ;int (* write_isac ) (struct isac*,int ,int) ;} ;


 int DBG (int ,char*,...) ;
 int DBG_IRQ ;
 int DBG_WARN ;
 int ISAC_ISTA ;
 unsigned char ISAC_ISTA_CISQ ;
 unsigned char ISAC_ISTA_EXI ;
 unsigned char ISAC_ISTA_RME ;
 unsigned char ISAC_ISTA_RPF ;
 unsigned char ISAC_ISTA_RSC ;
 unsigned char ISAC_ISTA_SIN ;
 unsigned char ISAC_ISTA_XPR ;
 int ISAC_MASK ;
 int isac_cisq_interrupt (struct isac*) ;
 int isac_empty_fifo (struct isac*,int) ;
 int isac_exi_interrupt (struct isac*) ;
 int isac_rme_interrupt (struct isac*) ;
 int isac_xpr_interrupt (struct isac*) ;
 unsigned char stub1 (struct isac*,int ) ;
 int stub2 (struct isac*,int ,int) ;
 int stub3 (struct isac*,int ,int) ;

void isac_irq(struct isac *isac)
{
 unsigned char val;

 val = isac->read_isac(isac, ISAC_ISTA);
 DBG(DBG_IRQ, "ISTA %#x", val);

 if (val & ISAC_ISTA_EXI) {
  DBG(DBG_IRQ, "EXI");
  isac_exi_interrupt(isac);
 }
 if (val & ISAC_ISTA_XPR) {
  DBG(DBG_IRQ, "XPR");
  isac_xpr_interrupt(isac);
 }
 if (val & ISAC_ISTA_RME) {
  DBG(DBG_IRQ, "RME");
  isac_rme_interrupt(isac);
 }
 if (val & ISAC_ISTA_RPF) {
  DBG(DBG_IRQ, "RPF");
  isac_empty_fifo(isac, 0x20);
 }
 if (val & ISAC_ISTA_CISQ) {
  DBG(DBG_IRQ, "CISQ");
  isac_cisq_interrupt(isac);
 }
 if (val & ISAC_ISTA_RSC) {
  DBG(DBG_WARN, "RSC");
 }
 if (val & ISAC_ISTA_SIN) {
  DBG(DBG_WARN, "SIN");
 }
 isac->write_isac(isac, ISAC_MASK, 0xff);
 isac->write_isac(isac, ISAC_MASK, 0x00);
}
