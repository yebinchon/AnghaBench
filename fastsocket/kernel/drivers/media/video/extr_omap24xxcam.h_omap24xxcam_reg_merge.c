
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static inline u32 omap24xxcam_reg_merge(unsigned long base, u32 offset,
         u32 val, u32 mask)
{
 u32 addr = base + offset;
 u32 new_val = (readl(addr) & ~mask) | (val & mask);

 writel(new_val, addr);
 return new_val;
}
