
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ssb_extif {int dummy; } ;


 int extif_read32 (struct ssb_extif*,int ) ;
 int extif_write32 (struct ssb_extif*,int ,int) ;

__attribute__((used)) static inline u32 extif_write32_masked(struct ssb_extif *extif, u16 offset,
           u32 mask, u32 value)
{
 value &= mask;
 value |= extif_read32(extif, offset) & ~mask;
 extif_write32(extif, offset, value);

 return value;
}
