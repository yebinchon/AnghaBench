
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 int REG_WR (struct bnx2x*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void __storm_memset_struct(struct bnx2x *bp,
      u32 addr, size_t size, u32 *data)
{
 int i;
 for (i = 0; i < size/4; i++)
  REG_WR(bp, addr + (i * 4), data[i]);
}
