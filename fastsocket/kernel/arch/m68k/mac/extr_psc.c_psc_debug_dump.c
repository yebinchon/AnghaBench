
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pIERbase ;
 scalar_t__ pIFRbase ;
 int printk (char*,int,int,int) ;
 int psc_present ;
 scalar_t__ psc_read_byte (scalar_t__) ;

__attribute__((used)) static void psc_debug_dump(void)
{
 int i;

 if (!psc_present) return;
 for (i = 0x30 ; i < 0x70 ; i += 0x10) {
  printk("PSC #%d:  IFR = 0x%02X IER = 0x%02X\n",
   i >> 4,
   (int) psc_read_byte(pIFRbase + i),
   (int) psc_read_byte(pIERbase + i));
 }
}
