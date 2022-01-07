
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {char* inbuf; int tlet; int empty_wait; int * buffer; struct ccw_device* cdev; } ;
struct ccw_device {int handler; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int NR_3215 ;
 scalar_t__ RAW3215_BUFFER_SIZE ;
 scalar_t__ RAW3215_INBUF_SIZE ;
 struct raw3215_info* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,struct raw3215_info*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct raw3215_info*) ;
 void* kmalloc (scalar_t__,int) ;
 int memset (struct raw3215_info*,int ,int) ;
 struct raw3215_info** raw3215 ;
 int raw3215_device_lock ;
 int raw3215_irq ;
 int raw3215_wakeup ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int raw3215_probe (struct ccw_device *cdev)
{
 struct raw3215_info *raw;
 int line;


 if (raw3215[0] && (raw3215[0] == dev_get_drvdata(&cdev->dev)))
  return 0;
 raw = kmalloc(sizeof(struct raw3215_info) +
        RAW3215_INBUF_SIZE, GFP_KERNEL|GFP_DMA);
 if (raw == ((void*)0))
  return -ENOMEM;

 spin_lock(&raw3215_device_lock);
 for (line = 0; line < NR_3215; line++) {
  if (!raw3215[line]) {
   raw3215[line] = raw;
   break;
  }
 }
 spin_unlock(&raw3215_device_lock);
 if (line == NR_3215) {
  kfree(raw);
  return -ENODEV;
 }

 raw->cdev = cdev;
 raw->inbuf = (char *) raw + sizeof(struct raw3215_info);
 memset(raw, 0, sizeof(struct raw3215_info));
 raw->buffer = kmalloc(RAW3215_BUFFER_SIZE,
           GFP_KERNEL|GFP_DMA);
 if (raw->buffer == ((void*)0)) {
  spin_lock(&raw3215_device_lock);
  raw3215[line] = ((void*)0);
  spin_unlock(&raw3215_device_lock);
  kfree(raw);
  return -ENOMEM;
 }
 init_waitqueue_head(&raw->empty_wait);
 tasklet_init(&raw->tlet, raw3215_wakeup, (unsigned long) raw);

 dev_set_drvdata(&cdev->dev, raw);
 cdev->handler = raw3215_irq;

 return 0;
}
