#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct loop_device {int lo_offset; int /*<<< orphan*/  lo_blocksize; scalar_t__ lo_encrypt_key_size; struct file* lo_backing_file; } ;
struct inode {TYPE_2__* i_op; } ;
struct TYPE_6__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_3__ f_path; TYPE_1__* f_mapping; } ;
struct bio {int bi_rw; int /*<<< orphan*/  bi_size; scalar_t__ bi_sector; } ;
typedef  int loff_t ;
struct TYPE_5__ {int (* fallocate ) (struct inode*,int,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int BIO_FLUSH ; 
 int BIO_FUA ; 
 int /*<<< orphan*/  BIO_RW_BARRIER ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct loop_device*,struct bio*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct loop_device*,struct bio*,int) ; 
 int FUNC4 (struct inode*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct loop_device *lo, struct bio *bio)
{
	loff_t pos;
	int ret;

	pos = ((loff_t) bio->bi_sector << 9) + lo->lo_offset;

	if (FUNC0(bio) == WRITE) {
		struct file *file = lo->lo_backing_file;

		/* BIO_RW_BARRIER is deprecated */
		if (FUNC1(bio, BIO_RW_BARRIER)) {
			ret = -EOPNOTSUPP;
			goto out;
		}

		if (bio->bi_rw & BIO_FLUSH) {
			ret = FUNC6(file, file->f_path.dentry, 0);
			if (FUNC5(ret && ret != -EINVAL)) {
				ret = -EIO;
				goto out;
			}
		}

		/*
		 * We use punch hole to reclaim the free space used by the
		 * image a.k.a. discard. However we do not support discard if
		 * encryption is enabled, because it may give an attacker
		 * useful information.
		 */
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
			if (FUNC5(ret && ret != -EINVAL &&
				     ret != -EOPNOTSUPP))
				ret = -EIO;
			goto out;
		}

		ret = FUNC3(lo, bio, pos);

		if ((bio->bi_rw & BIO_FUA) && !ret) {
			ret = FUNC6(file, file->f_path.dentry, 0);
			if (FUNC5(ret && ret != -EINVAL))
				ret = -EIO;
		}
	} else
		ret = FUNC2(lo, bio, lo->lo_blocksize, pos);

out:
	return ret;
}