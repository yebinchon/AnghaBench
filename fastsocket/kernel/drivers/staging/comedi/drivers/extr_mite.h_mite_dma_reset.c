
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mite_channel {int channel; TYPE_1__* mite; } ;
struct TYPE_2__ {scalar_t__ mite_io_addr; } ;


 int CHOR_DMARESET ;
 int CHOR_FRESET ;
 scalar_t__ MITE_CHOR (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void mite_dma_reset(struct mite_channel *mite_chan)
{
 writel(CHOR_DMARESET | CHOR_FRESET,
        mite_chan->mite->mite_io_addr + MITE_CHOR(mite_chan->channel));
}
