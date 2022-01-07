
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ mbox_base ;

__attribute__((used)) static inline void mbox_write_reg(u32 val, size_t ofs)
{
 __raw_writel(val, mbox_base + ofs);
}
