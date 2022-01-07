
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct block_device {int bd_inode; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int blkdev_issue_discard (struct block_device*,int,int,int ,int ) ;
 int i_size_read (int ) ;

__attribute__((used)) static int blk_ioctl_discard(struct block_device *bdev, uint64_t start,
        uint64_t len)
{
 if (start & 511)
  return -EINVAL;
 if (len & 511)
  return -EINVAL;
 start >>= 9;
 len >>= 9;

 if (start + len > (i_size_read(bdev->bd_inode) >> 9))
  return -EINVAL;
 return blkdev_issue_discard(bdev, start, len, GFP_KERNEL, 0);
}
