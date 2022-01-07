
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ioat_chan_common {scalar_t__ reg_base; TYPE_1__* device; } ;
struct TYPE_2__ {int version; } ;


 scalar_t__ IOAT_CHANSTS_OFFSET_HIGH (int ) ;
 scalar_t__ IOAT_CHANSTS_OFFSET_LOW (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u64 ioat_chansts(struct ioat_chan_common *chan)
{
 u8 ver = chan->device->version;
 u64 status;
 u32 status_lo;




 status_lo = readl(chan->reg_base + IOAT_CHANSTS_OFFSET_LOW(ver));
 status = readl(chan->reg_base + IOAT_CHANSTS_OFFSET_HIGH(ver));
 status <<= 32;
 status |= status_lo;

 return status;
}
