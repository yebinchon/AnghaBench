
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brd_device {int dummy; } ;
struct block_device {int bd_openers; int bd_mutex; TYPE_2__* bd_inode; TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_4__ {int i_mapping; } ;
struct TYPE_3__ {struct brd_device* private_data; } ;


 unsigned int BLKFLSBUF ;
 int EBUSY ;
 int ENOTTY ;
 int brd_free_pages (struct brd_device*) ;
 int invalidate_bh_lrus () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int truncate_inode_pages (int ,int ) ;

__attribute__((used)) static int brd_ioctl(struct block_device *bdev, fmode_t mode,
   unsigned int cmd, unsigned long arg)
{
 int error;
 struct brd_device *brd = bdev->bd_disk->private_data;

 if (cmd != BLKFLSBUF)
  return -ENOTTY;





 mutex_lock(&bdev->bd_mutex);
 error = -EBUSY;
 if (bdev->bd_openers <= 1) {







  invalidate_bh_lrus();
  truncate_inode_pages(bdev->bd_inode->i_mapping, 0);
  brd_free_pages(brd);
  error = 0;
 }
 mutex_unlock(&bdev->bd_mutex);

 return error;
}
