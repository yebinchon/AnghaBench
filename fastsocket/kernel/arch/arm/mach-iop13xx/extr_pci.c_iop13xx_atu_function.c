
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int IOP13XX_ESSR0 ;


 int IOP13XX_INTERFACE_SEL_PCIX ;
 int __raw_readl (int ) ;

__attribute__((used)) static int iop13xx_atu_function(int atu)
{
 int func = 0;




 switch(atu) {
 case 128:
  if (__raw_readl(IOP13XX_ESSR0) & IOP13XX_INTERFACE_SEL_PCIX)
   func = 5;
  else
   func = 0;
  break;
 case 129:
  if (__raw_readl(IOP13XX_ESSR0) & IOP13XX_INTERFACE_SEL_PCIX)
   func = 0;
  else
   func = 5;
  break;
 default:
  BUG();
 }

 return func;
}
