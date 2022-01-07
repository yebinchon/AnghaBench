
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c64xx_dma_buff {int lli_dma; int lli; } ;


 int dma_pool ;
 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct s3c64xx_dma_buff*) ;

__attribute__((used)) static void s3c64xx_dma_freebuff(struct s3c64xx_dma_buff *buff)
{
 dma_pool_free(dma_pool, buff->lli, buff->lli_dma);
 kfree(buff);
}
