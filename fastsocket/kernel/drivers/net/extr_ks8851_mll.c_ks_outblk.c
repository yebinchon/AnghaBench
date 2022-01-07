
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ks_net {int hw_addr; } ;


 int iowrite16 (int ,int ) ;

__attribute__((used)) static inline void ks_outblk(struct ks_net *ks, u16 *wptr, u32 len)
{
 len >>= 1;
 while (len--)
  iowrite16(*wptr++, ks->hw_addr);
}
