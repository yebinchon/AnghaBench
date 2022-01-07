
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTDEF (unsigned int) ;
 int RESV1 (unsigned int) ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void aha1740_getconfig(unsigned int base, unsigned int *irq_level,
         unsigned int *irq_type,
         unsigned int *translation)
{
 static int intab[] = { 9, 10, 11, 12, 0, 14, 15, 0 };

 *irq_level = intab[inb(INTDEF(base)) & 0x7];
 *irq_type = (inb(INTDEF(base)) & 0x8) >> 3;
 *translation = inb(RESV1(base)) & 0x1;
 outb(inb(INTDEF(base)) | 0x10, INTDEF(base));
}
