
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnx2x {int * gunzip_buf; int gunzip_mapping; TYPE_1__* pdev; TYPE_2__* strm; } ;
struct TYPE_5__ {int * workspace; } ;
struct TYPE_4__ {int dev; } ;


 int BNX2X_ERR (char*) ;
 int ENOMEM ;
 int FW_BUF_SIZE ;
 int GFP_KERNEL ;
 int * dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (int,int ) ;
 int * vmalloc (int ) ;
 int zlib_inflate_workspacesize () ;

__attribute__((used)) static int bnx2x_gunzip_init(struct bnx2x *bp)
{
 bp->gunzip_buf = dma_alloc_coherent(&bp->pdev->dev, FW_BUF_SIZE,
         &bp->gunzip_mapping, GFP_KERNEL);
 if (bp->gunzip_buf == ((void*)0))
  goto gunzip_nomem1;

 bp->strm = kmalloc(sizeof(*bp->strm), GFP_KERNEL);
 if (bp->strm == ((void*)0))
  goto gunzip_nomem2;

 bp->strm->workspace = vmalloc(zlib_inflate_workspacesize());
 if (bp->strm->workspace == ((void*)0))
  goto gunzip_nomem3;

 return 0;

gunzip_nomem3:
 kfree(bp->strm);
 bp->strm = ((void*)0);

gunzip_nomem2:
 dma_free_coherent(&bp->pdev->dev, FW_BUF_SIZE, bp->gunzip_buf,
     bp->gunzip_mapping);
 bp->gunzip_buf = ((void*)0);

gunzip_nomem1:
 BNX2X_ERR("Cannot allocate firmware buffer for un-compression\n");
 return -ENOMEM;
}
