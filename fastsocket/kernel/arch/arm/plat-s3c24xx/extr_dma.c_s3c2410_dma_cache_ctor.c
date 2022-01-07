
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_buf {int dummy; } ;


 int memset (void*,int ,int) ;

__attribute__((used)) static void s3c2410_dma_cache_ctor(void *p)
{
 memset(p, 0, sizeof(struct s3c2410_dma_buf));
}
