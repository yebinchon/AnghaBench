
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jsflash {scalar_t__ base; struct jsfd_part* dv; } ;
struct jsfd_part {int dsize; } ;
struct gendisk {int first_minor; scalar_t__ queue; struct jsfd_part* private_data; int * fops; int disk_name; int major; } ;
typedef int DEFINE_SPINLOCK ;


 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int JSFD_MAJOR ;
 int JSF_MAX ;
 int JSF_NPART ;
 int JSF_PART_MASK ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int) ;
 scalar_t__ blk_init_queue (int ,int *) ;
 struct jsflash jsf0 ;
 scalar_t__ jsf_queue ;
 struct gendisk** jsfd_disk ;
 int jsfd_do_request ;
 int jsfd_fops ;
 int put_disk (struct gendisk*) ;
 scalar_t__ register_blkdev (int ,char*) ;
 int set_capacity (struct gendisk*,int) ;
 int set_disk_ro (struct gendisk*,int) ;
 int sprintf (int ,char*,int) ;
 int unregister_blkdev (int ,char*) ;

__attribute__((used)) static int jsfd_init(void)
{
 static DEFINE_SPINLOCK(lock);
 struct jsflash *jsf;
 struct jsfd_part *jdp;
 int err;
 int i;

 if (jsf0.base == 0)
  return -ENXIO;

 err = -ENOMEM;
 for (i = 0; i < JSF_MAX; i++) {
  struct gendisk *disk = alloc_disk(1);
  if (!disk)
   goto out;
  jsfd_disk[i] = disk;
 }

 if (register_blkdev(JSFD_MAJOR, "jsfd")) {
  err = -EIO;
  goto out;
 }

 jsf_queue = blk_init_queue(jsfd_do_request, &lock);
 if (!jsf_queue) {
  err = -ENOMEM;
  unregister_blkdev(JSFD_MAJOR, "jsfd");
  goto out;
 }

 for (i = 0; i < JSF_MAX; i++) {
  struct gendisk *disk = jsfd_disk[i];
  if ((i & JSF_PART_MASK) >= JSF_NPART) continue;
  jsf = &jsf0;
  jdp = &jsf->dv[i&JSF_PART_MASK];

  disk->major = JSFD_MAJOR;
  disk->first_minor = i;
  sprintf(disk->disk_name, "jsfd%d", i);
  disk->fops = &jsfd_fops;
  set_capacity(disk, jdp->dsize >> 9);
  disk->private_data = jdp;
  disk->queue = jsf_queue;
  add_disk(disk);
  set_disk_ro(disk, 1);
 }
 return 0;
out:
 while (i--)
  put_disk(jsfd_disk[i]);
 return err;
}
