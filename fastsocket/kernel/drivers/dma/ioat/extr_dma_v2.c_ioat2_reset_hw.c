
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioat_chan_common {scalar_t__ reg_base; } ;


 scalar_t__ IOAT_CHANERR_OFFSET ;
 int ioat2_quiesce (struct ioat_chan_common*,int ) ;
 int ioat2_reset_sync (struct ioat_chan_common*,int ) ;
 int msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ioat2_reset_hw(struct ioat_chan_common *chan)
{

 u32 chanerr;

 ioat2_quiesce(chan, msecs_to_jiffies(100));

 chanerr = readl(chan->reg_base + IOAT_CHANERR_OFFSET);
 writel(chanerr, chan->reg_base + IOAT_CHANERR_OFFSET);

 return ioat2_reset_sync(chan, msecs_to_jiffies(200));
}
