
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct loop_device {int lo_offset; int lo_blocksize; scalar_t__ lo_encrypt_key_size; struct file* lo_backing_file; } ;
struct inode {TYPE_2__* i_op; } ;
struct TYPE_6__ {int dentry; } ;
struct file {TYPE_3__ f_path; TYPE_1__* f_mapping; } ;
struct bio {int bi_rw; int bi_size; scalar_t__ bi_sector; } ;
typedef int loff_t ;
struct TYPE_5__ {int (* fallocate ) (struct inode*,int,int,int ) ;} ;
struct TYPE_4__ {struct inode* host; } ;


 int BIO_DISCARD ;
 int BIO_FLUSH ;
 int BIO_FUA ;
 int BIO_RW_BARRIER ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 scalar_t__ WRITE ;
 scalar_t__ bio_rw (struct bio*) ;
 scalar_t__ bio_rw_flagged (struct bio*,int ) ;
 int lo_receive (struct loop_device*,struct bio*,int ,int) ;
 int lo_send (struct loop_device*,struct bio*,int) ;
 int stub1 (struct inode*,int,int,int ) ;
 scalar_t__ unlikely (int) ;
 int vfs_fsync (struct file*,int ,int ) ;

__attribute__((used)) static int do_bio_filebacked(struct loop_device *lo, struct bio *bio)
{
 loff_t pos;
 int ret;

 pos = ((loff_t) bio->bi_sector << 9) + lo->lo_offset;

 if (bio_rw(bio) == WRITE) {
  struct file *file = lo->lo_backing_file;


  if (bio_rw_flagged(bio, BIO_RW_BARRIER)) {
   ret = -EOPNOTSUPP;
   goto out;
  }

  if (bio->bi_rw & BIO_FLUSH) {
   ret = vfs_fsync(file, file->f_path.dentry, 0);
   if (unlikely(ret && ret != -EINVAL)) {
    ret = -EIO;
    goto out;
   }
  }







  if (bio->bi_rw & BIO_DISCARD) {
   struct inode *inode = lo->lo_backing_file->f_mapping->host;
   int mode = FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE;

   if ((!inode->i_op->fallocate) ||
       lo->lo_encrypt_key_size) {
    ret = -EOPNOTSUPP;
    goto out;
   }
   ret = inode->i_op->fallocate(inode, mode, pos,
          bio->bi_size);
   if (unlikely(ret && ret != -EINVAL &&
         ret != -EOPNOTSUPP))
    ret = -EIO;
   goto out;
  }

  ret = lo_send(lo, bio, pos);

  if ((bio->bi_rw & BIO_FUA) && !ret) {
   ret = vfs_fsync(file, file->f_path.dentry, 0);
   if (unlikely(ret && ret != -EINVAL))
    ret = -EIO;
  }
 } else
  ret = lo_receive(lo, bio, lo->lo_blocksize, pos);

out:
 return ret;
}
