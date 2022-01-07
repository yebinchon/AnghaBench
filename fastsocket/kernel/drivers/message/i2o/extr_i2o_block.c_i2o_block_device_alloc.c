
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct i2o_block_device {struct gendisk* gd; int lock; int wcache; int rcache; int open_queue; } ;
struct gendisk {struct i2o_block_device* private_data; int * fops; struct request_queue* queue; int major; } ;


 int CACHE_PREFETCH ;
 int CACHE_WRITEBACK ;
 int ENOMEM ;
 struct i2o_block_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int I2O_MAJOR ;
 int INIT_LIST_HEAD (int *) ;
 struct gendisk* alloc_disk (int) ;
 struct request_queue* blk_init_queue (int ,int *) ;
 int blk_queue_prep_rq (struct request_queue*,int ) ;
 int i2o_block_fops ;
 int i2o_block_prep_req_fn ;
 int i2o_block_request_fn ;
 int kfree (struct i2o_block_device*) ;
 struct i2o_block_device* kzalloc (int,int ) ;
 int osm_err (char*) ;
 int put_disk (struct gendisk*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct i2o_block_device *i2o_block_device_alloc(void)
{
 struct i2o_block_device *dev;
 struct gendisk *gd;
 struct request_queue *queue;
 int rc;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  osm_err("Insufficient memory to allocate I2O Block disk.\n");
  rc = -ENOMEM;
  goto exit;
 }

 INIT_LIST_HEAD(&dev->open_queue);
 spin_lock_init(&dev->lock);
 dev->rcache = CACHE_PREFETCH;
 dev->wcache = CACHE_WRITEBACK;


 gd = alloc_disk(16);
 if (!gd) {
  osm_err("Insufficient memory to allocate gendisk.\n");
  rc = -ENOMEM;
  goto cleanup_dev;
 }


 queue = blk_init_queue(i2o_block_request_fn, &dev->lock);
 if (!queue) {
  osm_err("Insufficient memory to allocate request queue.\n");
  rc = -ENOMEM;
  goto cleanup_queue;
 }

 blk_queue_prep_rq(queue, i2o_block_prep_req_fn);

 gd->major = I2O_MAJOR;
 gd->queue = queue;
 gd->fops = &i2o_block_fops;
 gd->private_data = dev;

 dev->gd = gd;

 return dev;

      cleanup_queue:
 put_disk(gd);

      cleanup_dev:
 kfree(dev);

      exit:
 return ERR_PTR(rc);
}
