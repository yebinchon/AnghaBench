
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IOP13XX_ATUE_OCCAR ;
 int IOP13XX_ATUE_OCCDR ;
 int __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int rmb () ;

__attribute__((used)) static u32 iop13xx_atue_read(unsigned long addr)
{
 u32 val;

 __raw_writel(addr, IOP13XX_ATUE_OCCAR);
 val = __raw_readl(IOP13XX_ATUE_OCCDR);

 rmb();

 return val;
}
