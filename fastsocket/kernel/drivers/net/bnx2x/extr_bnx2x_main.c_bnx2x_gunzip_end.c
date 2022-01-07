
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x {int * gunzip_buf; int gunzip_mapping; TYPE_1__* pdev; TYPE_2__* strm; } ;
struct TYPE_4__ {int workspace; } ;
struct TYPE_3__ {int dev; } ;


 int FW_BUF_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (TYPE_2__*) ;
 int vfree (int ) ;

__attribute__((used)) static void bnx2x_gunzip_end(struct bnx2x *bp)
{
 if (bp->strm) {
  vfree(bp->strm->workspace);
  kfree(bp->strm);
  bp->strm = ((void*)0);
 }

 if (bp->gunzip_buf) {
  dma_free_coherent(&bp->pdev->dev, FW_BUF_SIZE, bp->gunzip_buf,
      bp->gunzip_mapping);
  bp->gunzip_buf = ((void*)0);
 }
}
