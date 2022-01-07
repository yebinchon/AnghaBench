
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_readw (scalar_t__) ;
 scalar_t__ mbox_base ;

__attribute__((used)) static inline int mbox_read_reg(size_t ofs)
{
 return __raw_readw(mbox_base + ofs);
}
