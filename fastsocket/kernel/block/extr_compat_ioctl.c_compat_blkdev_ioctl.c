
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {struct block_device* i_bdev; } ;
struct gendisk {TYPE_2__* fops; } ;
struct file {int f_flags; int f_mode; TYPE_1__* f_mapping; } ;
struct block_device {int bd_inode; struct gendisk* bd_disk; } ;
struct backing_dev_info {int ra_pages; } ;
typedef int loff_t ;
typedef int fmode_t ;
struct TYPE_4__ {int (* compat_ioctl ) (struct block_device*,int ,unsigned int,unsigned long) ;} ;
struct TYPE_3__ {struct inode* host; } ;




 unsigned int BLKBSZSET ;
 int CAP_SYS_ADMIN ;
 long EACCES ;
 long EFBIG ;
 long EINVAL ;
 int ENOIOCTLCMD ;
 long ENOTTY ;
 int FMODE_NDELAY ;

 int O_NDELAY ;
 int PAGE_CACHE_SIZE ;
 int bdev_alignment_offset (struct block_device*) ;
 int bdev_discard_zeroes_data (struct block_device*) ;
 int bdev_get_queue (struct block_device*) ;
 int bdev_io_min (struct block_device*) ;
 int bdev_io_opt (struct block_device*) ;
 int bdev_logical_block_size (struct block_device*) ;
 int bdev_physical_block_size (struct block_device*) ;
 int bdev_read_only (struct block_device*) ;
 struct backing_dev_info* blk_get_backing_dev_info (struct block_device*) ;
 int blk_trace_ioctl (struct block_device*,unsigned int,scalar_t__) ;
 long blkdev_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int block_size (struct block_device*) ;
 int capable (int ) ;
 int compat_blk_trace_setup (struct block_device*,scalar_t__) ;
 int compat_blkdev_driver_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 long compat_blkpg_ioctl (struct block_device*,int ,unsigned int,scalar_t__) ;
 long compat_hdio_getgeo (struct gendisk*,struct block_device*,scalar_t__) ;
 scalar_t__ compat_ptr (unsigned long) ;
 long compat_put_int (unsigned long,int) ;
 long compat_put_long (unsigned long,int) ;
 long compat_put_u64 (unsigned long,int) ;
 long compat_put_uint (unsigned long,int ) ;
 long compat_put_ulong (unsigned long,int) ;
 long compat_put_ushort (unsigned long,int ) ;
 int i_size_read (int ) ;
 int lock_kernel () ;
 int queue_max_sectors (int ) ;
 int stub1 (struct block_device*,int ,unsigned int,unsigned long) ;
 int unlock_kernel () ;

long compat_blkdev_ioctl(struct file *file, unsigned cmd, unsigned long arg)
{
 int ret = -ENOIOCTLCMD;
 struct inode *inode = file->f_mapping->host;
 struct block_device *bdev = inode->i_bdev;
 struct gendisk *disk = bdev->bd_disk;
 fmode_t mode = file->f_mode;
 struct backing_dev_info *bdi;
 loff_t size;





 if (file->f_flags & O_NDELAY)
  mode |= FMODE_NDELAY;
 else
  mode &= ~FMODE_NDELAY;

 switch (cmd) {
 case 128:
  return compat_hdio_getgeo(disk, bdev, compat_ptr(arg));
 case 141:
  return compat_put_uint(arg, bdev_physical_block_size(bdev));
 case 143:
  return compat_put_uint(arg, bdev_io_min(bdev));
 case 142:
  return compat_put_uint(arg, bdev_io_opt(bdev));
 case 153:
  return compat_put_int(arg, bdev_alignment_offset(bdev));
 case 149:
  return compat_put_uint(arg, bdev_discard_zeroes_data(bdev));
 case 148:
 case 136:
 case 150:




 case 135:
  return blkdev_ioctl(bdev, mode, cmd,
    (unsigned long)compat_ptr(arg));
 case 151:
  return blkdev_ioctl(bdev, mode, BLKBSZSET,
    (unsigned long)compat_ptr(arg));
 case 140:
  return compat_blkpg_ioctl(bdev, mode, cmd, compat_ptr(arg));
 case 139:
 case 147:
  if (!arg)
   return -EINVAL;
  bdi = blk_get_backing_dev_info(bdev);
  if (bdi == ((void*)0))
   return -ENOTTY;
  return compat_put_long(arg,
           (bdi->ra_pages * PAGE_CACHE_SIZE) / 512);
 case 137:
  return compat_put_int(arg, bdev_read_only(bdev) != 0);
 case 152:
  return compat_put_int(arg, block_size(bdev));
 case 133:
  return compat_put_int(arg, bdev_logical_block_size(bdev));
 case 134:
  return compat_put_ushort(arg,
      queue_max_sectors(bdev_get_queue(bdev)));
 case 138:
 case 146:
  if (!capable(CAP_SYS_ADMIN))
   return -EACCES;
  bdi = blk_get_backing_dev_info(bdev);
  if (bdi == ((void*)0))
   return -ENOTTY;
  bdi->ra_pages = (arg * 512) / PAGE_CACHE_SIZE;
  return 0;
 case 145:
  size = i_size_read(bdev->bd_inode);
  if ((size >> 9) > ~0UL)
   return -EFBIG;
  return compat_put_ulong(arg, size >> 9);

 case 144:
  return compat_put_u64(arg, i_size_read(bdev->bd_inode));

 case 132:
  lock_kernel();
  ret = compat_blk_trace_setup(bdev, compat_ptr(arg));
  unlock_kernel();
  return ret;
 case 131:
 case 130:
 case 129:
  lock_kernel();
  ret = blk_trace_ioctl(bdev, cmd, compat_ptr(arg));
  unlock_kernel();
  return ret;
 default:
  if (disk->fops->compat_ioctl)
   ret = disk->fops->compat_ioctl(bdev, mode, cmd, arg);
  if (ret == -ENOIOCTLCMD)
   ret = compat_blkdev_driver_ioctl(bdev, mode, cmd, arg);
  return ret;
 }
}
