
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c64xx_dma_buff {int pw; } ;
struct s3c2410_dma_chan {int (* callback_fn ) (struct s3c2410_dma_chan*,int ,int ,int) ;} ;
typedef enum s3c2410_dma_buffresult { ____Placeholder_s3c2410_dma_buffresult } s3c2410_dma_buffresult ;


 int stub1 (struct s3c2410_dma_chan*,int ,int ,int) ;

__attribute__((used)) static inline void s3c64xx_dma_bufffdone(struct s3c2410_dma_chan *chan,
      struct s3c64xx_dma_buff *buf,
      enum s3c2410_dma_buffresult result)
{
 if (chan->callback_fn != ((void*)0))
  (chan->callback_fn)(chan, buf->pw, 0, result);
}
