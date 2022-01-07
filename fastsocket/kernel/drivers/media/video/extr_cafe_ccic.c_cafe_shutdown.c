
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cafe_camera {scalar_t__ n_sbufs; int vdev; int regs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int cafe_ctlr_power_down (struct cafe_camera*) ;
 int cafe_ctlr_stop_dma (struct cafe_camera*) ;
 int cafe_free_dma_bufs (struct cafe_camera*) ;
 int cafe_free_sio_buffers (struct cafe_camera*) ;
 int cafe_smbus_shutdown (struct cafe_camera*) ;
 int free_irq (int ,struct cafe_camera*) ;
 int pci_iounmap (TYPE_1__*,int ) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void cafe_shutdown(struct cafe_camera *cam)
{

 if (cam->n_sbufs > 0)

  cafe_free_sio_buffers(cam);
 cafe_ctlr_stop_dma(cam);
 cafe_ctlr_power_down(cam);
 cafe_smbus_shutdown(cam);
 cafe_free_dma_bufs(cam);
 free_irq(cam->pdev->irq, cam);
 pci_iounmap(cam->pdev, cam->regs);
 video_unregister_device(&cam->vdev);
}
