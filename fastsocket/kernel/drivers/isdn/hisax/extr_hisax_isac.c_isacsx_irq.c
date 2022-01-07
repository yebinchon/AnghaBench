
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {unsigned char (* read_isac ) (struct isac*,int ) ;} ;


 int DBG (int ,char*,unsigned char) ;
 int DBG_IRQ ;
 int ISACSX_ISTA ;
 unsigned char ISACSX_ISTA_CIC ;
 unsigned char ISACSX_ISTA_ICD ;
 int isacsx_cic_interrupt (struct isac*) ;
 int isacsx_icd_interrupt (struct isac*) ;
 unsigned char stub1 (struct isac*,int ) ;

void isacsx_irq(struct isac *isac)
{
 unsigned char val;

 val = isac->read_isac(isac, ISACSX_ISTA);
 DBG(DBG_IRQ, "ISTA %#x", val);

 if (val & ISACSX_ISTA_ICD)
  isacsx_icd_interrupt(isac);
 if (val & ISACSX_ISTA_CIC)
  isacsx_cic_interrupt(isac);
}
