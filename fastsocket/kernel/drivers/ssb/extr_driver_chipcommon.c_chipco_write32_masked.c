
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ssb_chipcommon {int dummy; } ;


 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int) ;

__attribute__((used)) static inline u32 chipco_write32_masked(struct ssb_chipcommon *cc, u16 offset,
     u32 mask, u32 value)
{
 value &= mask;
 value |= chipco_read32(cc, offset) & ~mask;
 chipco_write32(cc, offset, value);

 return value;
}
