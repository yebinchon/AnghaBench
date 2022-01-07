
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_buf {int magic; } ;


 int BUF_MAGIC ;
 int dma_kmem ;
 int kmem_cache_free (int ,struct s3c2410_dma_buf*) ;
 int printk (char*,struct s3c2410_dma_buf*) ;

__attribute__((used)) static inline void
s3c2410_dma_freebuf(struct s3c2410_dma_buf *buf)
{
 int magicok = (buf->magic == BUF_MAGIC);

 buf->magic = -1;

 if (magicok) {
  kmem_cache_free(dma_kmem, buf);
 } else {
  printk("s3c2410_dma_freebuf: buff %p with bad magic\n", buf);
 }
}
