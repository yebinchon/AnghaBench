
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cafe_camera {int nbufs; int ** dma_bufs; int * dma_handles; int dma_buf_size; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void cafe_free_dma_bufs(struct cafe_camera *cam)
{
 int i;

 for (i = 0; i < cam->nbufs; i++) {
  dma_free_coherent(&cam->pdev->dev, cam->dma_buf_size,
    cam->dma_bufs[i], cam->dma_handles[i]);
  cam->dma_bufs[i] = ((void*)0);
 }
 cam->nbufs = 0;
}
