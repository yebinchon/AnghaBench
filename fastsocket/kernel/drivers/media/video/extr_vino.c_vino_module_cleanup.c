
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dma_addr_t ;
struct TYPE_8__ {int dma; int * dma_cpu; } ;
struct TYPE_7__ {int * vdev; } ;
struct TYPE_6__ {int * vdev; } ;
struct TYPE_9__ {int v4l2_dev; int dummy_page; TYPE_3__ dummy_desc_table; TYPE_2__ a; TYPE_1__ b; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int SGI_VINO_IRQ ;
 int VINO_DUMMY_DESC_COUNT ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int dprintk (char*,int) ;
 int free_irq (int ,int *) ;
 int free_page (int ) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (TYPE_4__*) ;
 int v4l2_device_unregister (int *) ;
 int video_device_release (int *) ;
 int video_unregister_device (int *) ;
 int vino ;
 TYPE_4__* vino_drvdata ;
 int vino_i2c_adapter ;

__attribute__((used)) static void vino_module_cleanup(int stage)
{
 switch(stage) {
 case 11:
  video_unregister_device(vino_drvdata->b.vdev);
  vino_drvdata->b.vdev = ((void*)0);
 case 10:
  video_unregister_device(vino_drvdata->a.vdev);
  vino_drvdata->a.vdev = ((void*)0);
 case 9:
  i2c_del_adapter(&vino_i2c_adapter);
 case 8:
  free_irq(SGI_VINO_IRQ, ((void*)0));
 case 7:
  if (vino_drvdata->b.vdev) {
   video_device_release(vino_drvdata->b.vdev);
   vino_drvdata->b.vdev = ((void*)0);
  }
 case 6:
  if (vino_drvdata->a.vdev) {
   video_device_release(vino_drvdata->a.vdev);
   vino_drvdata->a.vdev = ((void*)0);
  }
 case 5:

  dma_unmap_single(((void*)0),
     vino_drvdata->dummy_desc_table.dma_cpu[0],
     PAGE_SIZE, DMA_FROM_DEVICE);
  dma_free_coherent(((void*)0), VINO_DUMMY_DESC_COUNT
      * sizeof(dma_addr_t),
      (void *)vino_drvdata->
      dummy_desc_table.dma_cpu,
      vino_drvdata->dummy_desc_table.dma);
 case 4:
  free_page(vino_drvdata->dummy_page);
 case 3:
  v4l2_device_unregister(&vino_drvdata->v4l2_dev);
 case 2:
  kfree(vino_drvdata);
 case 1:
  iounmap(vino);
 case 0:
  break;
 default:
  dprintk("vino_module_cleanup(): invalid cleanup stage = %d\n",
   stage);
 }
}
