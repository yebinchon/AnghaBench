
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENODEV ;
 int ENUM_INT_MASK ;
 int csr_int_mask ;
 int * hc_dev ;
 int readb (int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static int zt5550_hc_enable_irq(void)
{
 u8 reg;

 if(hc_dev == ((void*)0)) {
  return -ENODEV;
 }
 reg = readb(csr_int_mask);
 reg = reg & ~ENUM_INT_MASK;
 writeb(reg, csr_int_mask);
 return 0;
}
