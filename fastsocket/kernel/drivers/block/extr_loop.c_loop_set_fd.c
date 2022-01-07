
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct loop_device {scalar_t__ lo_state; unsigned int lo_blocksize; int lo_flags; int old_gfp_mask; int lo_disk; TYPE_3__* lo_queue; struct file* lo_backing_file; struct block_device* lo_device; int * lo_thread; int lo_number; int lo_bio_list; scalar_t__ lo_sizelimit; int * ioctl; int transfer; } ;
struct inode {struct block_device* i_bdev; int i_mode; } ;
struct file {int f_mode; TYPE_2__* f_op; struct address_space* f_mapping; } ;
struct block_device {unsigned int bd_block_size; TYPE_1__* bd_disk; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ sector_t ;
typedef int loff_t ;
typedef int fmode_t ;
struct TYPE_6__ {int * unplug_fn; } ;
struct TYPE_5__ {scalar_t__ fsync; int write; } ;
struct TYPE_4__ {struct loop_device* private_data; } ;


 int BLKRRPART ;
 int EBADF ;
 int EBUSY ;
 int EFBIG ;
 int EINVAL ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (int *) ;
 int LO_FLAGS_READ_ONLY ;
 scalar_t__ Lo_bound ;
 scalar_t__ Lo_unbound ;
 unsigned int PAGE_SIZE ;
 int PTR_ERR (int *) ;
 int REQ_FLUSH ;
 scalar_t__ S_ISBLK (int ) ;
 int S_ISREG (int ) ;
 int THIS_MODULE ;
 int __GFP_FS ;
 int __GFP_IO ;
 int __module_get (int ) ;
 int bd_set_size (struct block_device*,int) ;
 int bio_list_init (int *) ;
 int blk_queue_flush (TYPE_3__*,int ) ;
 struct file* fget (unsigned int) ;
 int fput (struct file*) ;
 int get_loop_size (struct loop_device*,struct file*) ;
 int invalidate_bdev (struct block_device*) ;
 int ioctl_by_bdev (struct block_device*,int ,int ) ;
 scalar_t__ is_loop_device (struct file*) ;
 int * kthread_create (int ,struct loop_device*,char*,int ) ;
 int loop_thread ;
 int * loop_unplug ;
 int mapping_gfp_mask (struct address_space*) ;
 int mapping_set_gfp_mask (struct address_space*,int) ;
 scalar_t__ max_part ;
 int module_put (int ) ;
 int set_blocksize (struct block_device*,unsigned int) ;
 int set_capacity (int ,int) ;
 int set_device_ro (struct block_device*,int) ;
 int transfer_none ;
 int wake_up_process (int *) ;

__attribute__((used)) static int loop_set_fd(struct loop_device *lo, fmode_t mode,
         struct block_device *bdev, unsigned int arg)
{
 struct file *file, *f;
 struct inode *inode;
 struct address_space *mapping;
 unsigned lo_blocksize;
 int lo_flags = 0;
 int error;
 loff_t size;


 __module_get(THIS_MODULE);

 error = -EBADF;
 file = fget(arg);
 if (!file)
  goto out;

 error = -EBUSY;
 if (lo->lo_state != Lo_unbound)
  goto out_putf;


 f = file;
 while (is_loop_device(f)) {
  struct loop_device *l;

  if (f->f_mapping->host->i_bdev == bdev)
   goto out_putf;

  l = f->f_mapping->host->i_bdev->bd_disk->private_data;
  if (l->lo_state == Lo_unbound) {
   error = -EINVAL;
   goto out_putf;
  }
  f = l->lo_backing_file;
 }

 mapping = file->f_mapping;
 inode = mapping->host;

 error = -EINVAL;
 if (!S_ISREG(inode->i_mode) && !S_ISBLK(inode->i_mode))
  goto out_putf;

 if (!(file->f_mode & FMODE_WRITE) || !(mode & FMODE_WRITE) ||
     !file->f_op->write)
  lo_flags |= LO_FLAGS_READ_ONLY;

 lo_blocksize = S_ISBLK(inode->i_mode) ?
  inode->i_bdev->bd_block_size : PAGE_SIZE;

 error = -EFBIG;
 size = get_loop_size(lo, file);
 if ((loff_t)(sector_t)size != size)
  goto out_putf;

 error = 0;

 set_device_ro(bdev, (lo_flags & LO_FLAGS_READ_ONLY) != 0);

 lo->lo_blocksize = lo_blocksize;
 lo->lo_device = bdev;
 lo->lo_flags = lo_flags;
 lo->lo_backing_file = file;
 lo->transfer = transfer_none;
 lo->ioctl = ((void*)0);
 lo->lo_sizelimit = 0;
 lo->old_gfp_mask = mapping_gfp_mask(mapping);
 mapping_set_gfp_mask(mapping, lo->old_gfp_mask & ~(__GFP_IO|__GFP_FS));

 bio_list_init(&lo->lo_bio_list);

 lo->lo_queue->unplug_fn = loop_unplug;

 if (!(lo_flags & LO_FLAGS_READ_ONLY) && file->f_op->fsync)
  blk_queue_flush(lo->lo_queue, REQ_FLUSH);

 set_capacity(lo->lo_disk, size);
 bd_set_size(bdev, size << 9);

 set_blocksize(bdev, lo_blocksize);

 lo->lo_thread = kthread_create(loop_thread, lo, "loop%d",
      lo->lo_number);
 if (IS_ERR(lo->lo_thread)) {
  error = PTR_ERR(lo->lo_thread);
  goto out_clr;
 }
 lo->lo_state = Lo_bound;
 wake_up_process(lo->lo_thread);
 if (max_part > 0)
  ioctl_by_bdev(bdev, BLKRRPART, 0);
 return 0;

out_clr:
 lo->lo_thread = ((void*)0);
 lo->lo_device = ((void*)0);
 lo->lo_backing_file = ((void*)0);
 lo->lo_flags = 0;
 lo->lo_queue->unplug_fn = ((void*)0);
 set_capacity(lo->lo_disk, 0);
 invalidate_bdev(bdev);
 bd_set_size(bdev, 0);
 mapping_set_gfp_mask(mapping, lo->old_gfp_mask);
 lo->lo_state = Lo_unbound;
 out_putf:
 fput(file);
 out:

 module_put(THIS_MODULE);
 return error;
}
