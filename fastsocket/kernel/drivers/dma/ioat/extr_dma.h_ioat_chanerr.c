
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioat_chan_common {scalar_t__ reg_base; } ;


 scalar_t__ IOAT_CHANERR_OFFSET ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 ioat_chanerr(struct ioat_chan_common *chan)
{
 return readl(chan->reg_base + IOAT_CHANERR_OFFSET);
}
