
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {unsigned char (* read_isac ) (struct isac*,int ) ;int (* write_isac ) (struct isac*,int ,int ) ;} ;


 int DBG (int ,char*,...) ;
 int DBG_IRQ ;
 int DBG_WARN ;
 int ISACSX_CMDRD ;
 int ISACSX_CMDRD_RMC ;
 int ISACSX_ISTAD ;
 unsigned char ISACSX_ISTAD_RFO ;
 unsigned char ISACSX_ISTAD_RME ;
 unsigned char ISACSX_ISTAD_RPF ;
 unsigned char ISACSX_ISTAD_XDU ;
 unsigned char ISACSX_ISTAD_XMR ;
 unsigned char ISACSX_ISTAD_XPR ;
 int isac_empty_fifo (struct isac*,int) ;
 int isac_retransmit (struct isac*) ;
 int isacsx_rme_interrupt (struct isac*) ;
 int isacsx_xpr_interrupt (struct isac*) ;
 unsigned char stub1 (struct isac*,int ) ;
 int stub2 (struct isac*,int ,int ) ;

__attribute__((used)) static inline void isacsx_icd_interrupt(struct isac *isac)
{
 unsigned char val;

 val = isac->read_isac(isac, ISACSX_ISTAD);
 DBG(DBG_IRQ, "ISTAD %#x", val);
 if (val & ISACSX_ISTAD_XDU) {
  DBG(DBG_WARN, "ISTAD XDU");
  isac_retransmit(isac);
 }
 if (val & ISACSX_ISTAD_XMR) {
  DBG(DBG_WARN, "ISTAD XMR");
  isac_retransmit(isac);
 }
 if (val & ISACSX_ISTAD_XPR) {
  DBG(DBG_IRQ, "ISTAD XPR");
  isacsx_xpr_interrupt(isac);
 }
 if (val & ISACSX_ISTAD_RFO) {
  DBG(DBG_WARN, "ISTAD RFO");
  isac->write_isac(isac, ISACSX_CMDRD, ISACSX_CMDRD_RMC);
 }
 if (val & ISACSX_ISTAD_RME) {
  DBG(DBG_IRQ, "ISTAD RME");
  isacsx_rme_interrupt(isac);
 }
 if (val & ISACSX_ISTAD_RPF) {
  DBG(DBG_IRQ, "ISTAD RPF");
  isac_empty_fifo(isac, 0x20);
 }
}
