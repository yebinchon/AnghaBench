
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ubd {TYPE_4__* queue; int size; int lock; int sg; int restart; int * file; } ;
struct TYPE_8__ {struct ubd* queuedata; } ;
struct TYPE_7__ {int disk_name; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_SG ;
 int ROUND_BLOCK (int ) ;
 scalar_t__ UBD_MAJOR ;
 int blk_cleanup_queue (TYPE_4__*) ;
 TYPE_4__* blk_init_queue (int ,int *) ;
 int blk_queue_max_segments (TYPE_4__*,int ) ;
 int do_ubd_request ;
 TYPE_1__** fake_gendisk ;
 scalar_t__ fake_ide ;
 scalar_t__ fake_major ;
 int make_ide_entries (int ) ;
 int sg_init_table (int ,int ) ;
 struct ubd* ubd_devs ;
 int ubd_disk_register (scalar_t__,int ,int,TYPE_1__**) ;
 int ubd_file_size (struct ubd*,int *) ;
 TYPE_1__** ubd_gendisk ;

__attribute__((used)) static int ubd_add(int n, char **error_out)
{
 struct ubd *ubd_dev = &ubd_devs[n];
 int err = 0;

 if(ubd_dev->file == ((void*)0))
  goto out;

 err = ubd_file_size(ubd_dev, &ubd_dev->size);
 if(err < 0){
  *error_out = "Couldn't determine size of device's file";
  goto out;
 }

 ubd_dev->size = ROUND_BLOCK(ubd_dev->size);

 INIT_LIST_HEAD(&ubd_dev->restart);
 sg_init_table(ubd_dev->sg, MAX_SG);

 err = -ENOMEM;
 ubd_dev->queue = blk_init_queue(do_ubd_request, &ubd_dev->lock);
 if (ubd_dev->queue == ((void*)0)) {
  *error_out = "Failed to initialize device queue";
  goto out;
 }
 ubd_dev->queue->queuedata = ubd_dev;

 blk_queue_max_segments(ubd_dev->queue, MAX_SG);
 err = ubd_disk_register(UBD_MAJOR, ubd_dev->size, n, &ubd_gendisk[n]);
 if(err){
  *error_out = "Failed to register device";
  goto out_cleanup;
 }

 if (fake_major != UBD_MAJOR)
  ubd_disk_register(fake_major, ubd_dev->size, n,
      &fake_gendisk[n]);





 if (fake_ide)
  make_ide_entries(ubd_gendisk[n]->disk_name);

 err = 0;
out:
 return err;

out_cleanup:
 blk_cleanup_queue(ubd_dev->queue);
 goto out;
}
