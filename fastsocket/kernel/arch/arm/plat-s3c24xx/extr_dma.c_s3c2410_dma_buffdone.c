
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_chan {int (* callback_fn ) (struct s3c2410_dma_chan*,int ,int ,int) ;} ;
struct s3c2410_dma_buf {int size; int id; } ;
typedef enum s3c2410_dma_buffresult { ____Placeholder_s3c2410_dma_buffresult } s3c2410_dma_buffresult ;


 int pr_debug (char*,int (*) (struct s3c2410_dma_chan*,int ,int ,int),struct s3c2410_dma_buf*,int ,int ,int) ;
 int stub1 (struct s3c2410_dma_chan*,int ,int ,int) ;

__attribute__((used)) static inline void
s3c2410_dma_buffdone(struct s3c2410_dma_chan *chan, struct s3c2410_dma_buf *buf,
       enum s3c2410_dma_buffresult result)
{





 if (chan->callback_fn != ((void*)0)) {
  (chan->callback_fn)(chan, buf->id, buf->size, result);
 }
}
