
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {unsigned int flags; } ;


 int EINVAL ;
 struct s3c2410_dma_chan* s3c_dma_lookup_channel (unsigned int) ;

int s3c2410_dma_setflags(unsigned int channel, unsigned int flags)
{
 struct s3c2410_dma_chan *chan = s3c_dma_lookup_channel(channel);

 if (chan == ((void*)0))
  return -EINVAL;

 chan->flags = flags;
 return 0;
}
