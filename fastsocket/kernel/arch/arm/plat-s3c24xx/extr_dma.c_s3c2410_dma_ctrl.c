
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {int dummy; } ;
typedef enum s3c2410_chan_op { ____Placeholder_s3c2410_chan_op } s3c2410_chan_op ;


 int EINVAL ;
 int ENOENT ;







 int s3c2410_dma_dostop (struct s3c2410_dma_chan*) ;
 int s3c2410_dma_flush (struct s3c2410_dma_chan*) ;
 int s3c2410_dma_start (struct s3c2410_dma_chan*) ;
 int s3c2410_dma_started (struct s3c2410_dma_chan*) ;
 struct s3c2410_dma_chan* s3c_dma_lookup_channel (unsigned int) ;

int
s3c2410_dma_ctrl(unsigned int channel, enum s3c2410_chan_op op)
{
 struct s3c2410_dma_chan *chan = s3c_dma_lookup_channel(channel);

 if (chan == ((void*)0))
  return -EINVAL;

 switch (op) {
 case 131:
  return s3c2410_dma_start(chan);

 case 129:
  return s3c2410_dma_dostop(chan);

 case 133:
 case 132:
  return -ENOENT;

 case 134:
  return s3c2410_dma_flush(chan);

 case 130:
  return s3c2410_dma_started(chan);

 case 128:
  return 0;

 }

 return -ENOENT;
}
