
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ks_net {int hw_addr; } ;


 scalar_t__ ioread16 (int ) ;

__attribute__((used)) static inline void ks_inblk(struct ks_net *ks, u16 *wptr, u32 len)
{
 len >>= 1;
 while (len--)
  *wptr++ = (u16)ioread16(ks->hw_addr);
}
