
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int REALVIEW_FLASHCTRL ;
 int REALVIEW_FLASHPROG_FLVPPEN ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static int realview_flash_init(void)
{
 u32 val;

 val = __raw_readl(REALVIEW_FLASHCTRL);
 val &= ~REALVIEW_FLASHPROG_FLVPPEN;
 __raw_writel(val, REALVIEW_FLASHCTRL);

 return 0;
}
