
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mite_struct {scalar_t__ mite_io_addr; } ;
struct mite_channel {int channel; struct mite_struct* mite; } ;


 scalar_t__ MITE_FCR (int ) ;
 int readl (scalar_t__) ;

u32 mite_bytes_in_transit(struct mite_channel * mite_chan)
{
 struct mite_struct *mite = mite_chan->mite;
 return readl(mite->mite_io_addr +
       MITE_FCR(mite_chan->channel)) & 0x000000FF;
}
