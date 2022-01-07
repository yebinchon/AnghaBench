
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * cpu_addr; int dma_handle; } ;
struct saa7146_vv {TYPE_1__ d_clipping; } ;
struct saa7146_ext_vv {int capabilities; int * core_ops; int ops; } ;
struct saa7146_dev {int * vv_callback; struct saa7146_vv* vv_data; struct saa7146_ext_vv* ext_vv_data; TYPE_4__* pci; int v4l2_dev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int (* init ) (struct saa7146_dev*,struct saa7146_vv*) ;} ;
struct TYPE_6__ {int (* init ) (struct saa7146_dev*,struct saa7146_vv*) ;} ;


 int BCS_CTRL ;
 int DEB_EE (char*) ;
 int ENOMEM ;
 int ERR (char*) ;
 int GFP_KERNEL ;
 int MASK_10 ;
 int MASK_26 ;
 int MC1 ;
 int SAA7146_CLIPPING_MEM ;
 int V4L2_CAP_VBI_CAPTURE ;
 int kfree (struct saa7146_vv*) ;
 struct saa7146_vv* kzalloc (int,int ) ;
 int memset (int *,int,int ) ;
 int * pci_alloc_consistent (TYPE_4__*,int ,int *) ;
 TYPE_3__ saa7146_vbi_uops ;
 int saa7146_video_ioctl_ops ;
 TYPE_2__ saa7146_video_uops ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int stub1 (struct saa7146_dev*,struct saa7146_vv*) ;
 int stub2 (struct saa7146_dev*,struct saa7146_vv*) ;
 int v4l2_device_register (int *,int *) ;
 int vv_callback ;

int saa7146_vv_init(struct saa7146_dev* dev, struct saa7146_ext_vv *ext_vv)
{
 struct saa7146_vv *vv;
 int err;

 err = v4l2_device_register(&dev->pci->dev, &dev->v4l2_dev);
 if (err)
  return err;

 vv = kzalloc(sizeof(struct saa7146_vv), GFP_KERNEL);
 if (vv == ((void*)0)) {
  ERR(("out of memory. aborting.\n"));
  return -ENOMEM;
 }
 ext_vv->ops = saa7146_video_ioctl_ops;
 ext_vv->core_ops = &saa7146_video_ioctl_ops;

 DEB_EE(("dev:%p\n",dev));


 saa7146_write(dev, BCS_CTRL, 0x80400040);


 saa7146_write(dev, MC1, (MASK_10 | MASK_26));




 dev->ext_vv_data = ext_vv;

 vv->d_clipping.cpu_addr = pci_alloc_consistent(dev->pci, SAA7146_CLIPPING_MEM, &vv->d_clipping.dma_handle);
 if( ((void*)0) == vv->d_clipping.cpu_addr ) {
  ERR(("out of memory. aborting.\n"));
  kfree(vv);
  return -1;
 }
 memset(vv->d_clipping.cpu_addr, 0x0, SAA7146_CLIPPING_MEM);

 saa7146_video_uops.init(dev,vv);
 if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
  saa7146_vbi_uops.init(dev,vv);

 dev->vv_data = vv;
 dev->vv_callback = &vv_callback;

 return 0;
}
