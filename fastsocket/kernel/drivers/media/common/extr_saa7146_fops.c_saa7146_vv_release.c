
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_handle; int cpu_addr; } ;
struct saa7146_vv {TYPE_1__ d_clipping; } ;
struct saa7146_dev {int * vv_callback; struct saa7146_vv* vv_data; int pci; int v4l2_dev; } ;


 int DEB_EE (char*) ;
 int SAA7146_CLIPPING_MEM ;
 int kfree (struct saa7146_vv*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int v4l2_device_unregister (int *) ;

int saa7146_vv_release(struct saa7146_dev* dev)
{
 struct saa7146_vv *vv = dev->vv_data;

 DEB_EE(("dev:%p\n",dev));

 v4l2_device_unregister(&dev->v4l2_dev);
 pci_free_consistent(dev->pci, SAA7146_CLIPPING_MEM, vv->d_clipping.cpu_addr, vv->d_clipping.dma_handle);
 kfree(vv);
 dev->vv_data = ((void*)0);
 dev->vv_callback = ((void*)0);

 return 0;
}
