
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ioat_chan_common {scalar_t__ reg_base; TYPE_1__* device; } ;
struct TYPE_2__ {int version; } ;


 scalar_t__ IOAT_CHANCMD_OFFSET (int ) ;
 int IOAT_CHANCMD_RESET ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void ioat_reset(struct ioat_chan_common *chan)
{
 u8 ver = chan->device->version;

 writeb(IOAT_CHANCMD_RESET, chan->reg_base + IOAT_CHANCMD_OFFSET(ver));
}
