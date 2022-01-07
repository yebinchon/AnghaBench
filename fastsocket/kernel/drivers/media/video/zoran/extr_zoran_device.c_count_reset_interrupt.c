
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zoran {int intr_counter_JPEGRepIRQ; int intr_counter_CodRepIRQ; int intr_counter_GIRQ0; int intr_counter_GIRQ1; } ;


 int ZR36057_ISR ;
 int ZR36057_ISR_CodRepIRQ ;
 int ZR36057_ISR_GIRQ0 ;
 int ZR36057_ISR_GIRQ1 ;
 int ZR36057_ISR_JPEGRepIRQ ;
 int btread (int ) ;
 int btwrite (int,int ) ;

__attribute__((used)) static u32
count_reset_interrupt (struct zoran *zr)
{
 u32 isr;

 if ((isr = btread(ZR36057_ISR) & 0x78000000)) {
  if (isr & ZR36057_ISR_GIRQ1) {
   btwrite(ZR36057_ISR_GIRQ1, ZR36057_ISR);
   zr->intr_counter_GIRQ1++;
  }
  if (isr & ZR36057_ISR_GIRQ0) {
   btwrite(ZR36057_ISR_GIRQ0, ZR36057_ISR);
   zr->intr_counter_GIRQ0++;
  }
  if (isr & ZR36057_ISR_CodRepIRQ) {
   btwrite(ZR36057_ISR_CodRepIRQ, ZR36057_ISR);
   zr->intr_counter_CodRepIRQ++;
  }
  if (isr & ZR36057_ISR_JPEGRepIRQ) {
   btwrite(ZR36057_ISR_JPEGRepIRQ, ZR36057_ISR);
   zr->intr_counter_JPEGRepIRQ++;
  }
 }
 return isr;
}
