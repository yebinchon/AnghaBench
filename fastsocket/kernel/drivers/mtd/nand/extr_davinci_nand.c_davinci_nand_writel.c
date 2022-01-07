
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_nand_info {scalar_t__ base; } ;


 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void davinci_nand_writel(struct davinci_nand_info *info,
  int offset, unsigned long value)
{
 __raw_writel(value, info->base + offset);
}
