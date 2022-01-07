
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbcs_soft {int algo; int putdma; int getdma; int algolock; int dmareadlock; int dmawritelock; int algo_queue; int dmaread_queue; int dmawrite_queue; struct cx_dev* cxdev; void* mmr_base; int list; int nasid; } ;
struct cx_device_id {int dummy; } ;
struct TYPE_2__ {int nasid; } ;
struct cx_dev {int dev; struct mbcs_soft* soft; TYPE_1__ cx_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_algo ;
 int device_create_file (int *,int *) ;
 int init_waitqueue_head (int *) ;
 struct mbcs_soft* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mbcs_algo_init (int *) ;
 int mbcs_getdma_init (int *) ;
 int mbcs_hw_init (struct mbcs_soft*) ;
 int mbcs_intr_alloc (struct cx_dev*) ;
 int mbcs_putdma_init (int *) ;
 int mutex_init (int *) ;
 int soft_list ;
 scalar_t__ tiocx_swin_base (int ) ;

__attribute__((used)) static int mbcs_probe(struct cx_dev *dev, const struct cx_device_id *id)
{
 struct mbcs_soft *soft;

 dev->soft = ((void*)0);

 soft = kzalloc(sizeof(struct mbcs_soft), GFP_KERNEL);
 if (soft == ((void*)0))
  return -ENOMEM;

 soft->nasid = dev->cx_id.nasid;
 list_add(&soft->list, &soft_list);
 soft->mmr_base = (void *)tiocx_swin_base(dev->cx_id.nasid);
 dev->soft = soft;
 soft->cxdev = dev;

 init_waitqueue_head(&soft->dmawrite_queue);
 init_waitqueue_head(&soft->dmaread_queue);
 init_waitqueue_head(&soft->algo_queue);

 mutex_init(&soft->dmawritelock);
 mutex_init(&soft->dmareadlock);
 mutex_init(&soft->algolock);

 mbcs_getdma_init(&soft->getdma);
 mbcs_putdma_init(&soft->putdma);
 mbcs_algo_init(&soft->algo);

 mbcs_hw_init(soft);


 mbcs_intr_alloc(dev);

 device_create_file(&dev->dev, &dev_attr_algo);

 return 0;
}
