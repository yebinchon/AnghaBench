
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {unsigned char (* read_isac ) (struct isac*,int ) ;} ;


 int DBG (int,char*,...) ;
 int DBG_WARN ;
 int ISAC_EXIR ;
 unsigned char ISAC_EXIR_MOS ;
 unsigned char ISAC_EXIR_XDU ;
 unsigned char ISAC_EXIR_XMR ;
 int ISAC_MOSR ;
 int isac_retransmit (struct isac*) ;
 unsigned char stub1 (struct isac*,int ) ;
 unsigned char stub2 (struct isac*,int ) ;

__attribute__((used)) static inline void isac_exi_interrupt(struct isac *isac)
{
 unsigned char val;

 val = isac->read_isac(isac, ISAC_EXIR);
 DBG(2, "EXIR %#x", val);

 if (val & ISAC_EXIR_XMR) {
  DBG(DBG_WARN, "ISAC XMR");
  isac_retransmit(isac);
 }
 if (val & ISAC_EXIR_XDU) {
  DBG(DBG_WARN, "ISAC XDU");
  isac_retransmit(isac);
 }
 if (val & ISAC_EXIR_MOS) {
  DBG(DBG_WARN, "MOS");
  val = isac->read_isac(isac, ISAC_MOSR);
  DBG(2, "ISAC MOSR %#x", val);
 }
}
