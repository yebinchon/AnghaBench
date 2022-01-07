
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pwc_device {int len_per_image; int * image_data; TYPE_2__* decompress_data; TYPE_2__* fbuf; TYPE_1__* sbuf; } ;
struct TYPE_4__ {int * data; } ;
struct TYPE_3__ {TYPE_2__* data; } ;


 int MAX_ISO_BUFS ;
 int PWC_DEBUG_MEMORY (char*,...) ;
 int default_fbufs ;
 int kfree (TYPE_2__*) ;
 int pwc_mbufs ;
 int pwc_rvfree (int *,int) ;
 int vfree (int *) ;

__attribute__((used)) static void pwc_free_buffers(struct pwc_device *pdev)
{
 int i;

 PWC_DEBUG_MEMORY("Entering free_buffers(%p).\n", pdev);

 if (pdev == ((void*)0))
  return;

 for (i = 0; i < MAX_ISO_BUFS; i++)
  if (pdev->sbuf[i].data != ((void*)0)) {
   PWC_DEBUG_MEMORY("Freeing ISO buffer at %p.\n", pdev->sbuf[i].data);
   kfree(pdev->sbuf[i].data);
   pdev->sbuf[i].data = ((void*)0);
  }


 if (pdev->fbuf != ((void*)0)) {
  for (i = 0; i < default_fbufs; i++) {
   if (pdev->fbuf[i].data != ((void*)0)) {
    PWC_DEBUG_MEMORY("Freeing frame buffer %d at %p.\n", i, pdev->fbuf[i].data);
    vfree(pdev->fbuf[i].data);
    pdev->fbuf[i].data = ((void*)0);
   }
  }
  kfree(pdev->fbuf);
  pdev->fbuf = ((void*)0);
 }


 if (pdev->decompress_data != ((void*)0)) {
  PWC_DEBUG_MEMORY("Freeing decompression buffer at %p.\n", pdev->decompress_data);
  kfree(pdev->decompress_data);
  pdev->decompress_data = ((void*)0);
 }


 if (pdev->image_data != ((void*)0)) {
  PWC_DEBUG_MEMORY("Freeing image buffer at %p.\n", pdev->image_data);
  pwc_rvfree(pdev->image_data, pwc_mbufs * pdev->len_per_image);
 }
 pdev->image_data = ((void*)0);

 PWC_DEBUG_MEMORY("Leaving free_buffers().\n");
}
