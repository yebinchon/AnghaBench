
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {int (* op_fn ) (struct s3c2410_dma_chan*,int) ;} ;
typedef enum s3c2410_chan_op { ____Placeholder_s3c2410_chan_op } s3c2410_chan_op ;


 int stub1 (struct s3c2410_dma_chan*,int) ;

__attribute__((used)) static void
s3c2410_dma_call_op(struct s3c2410_dma_chan *chan, enum s3c2410_chan_op op)
{
 if (chan->op_fn != ((void*)0)) {
  (chan->op_fn)(chan, op);
 }
}
