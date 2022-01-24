#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {struct block_device* i_bdev; } ;
struct gendisk {TYPE_2__* fops; } ;
struct file {int f_flags; int /*<<< orphan*/  f_mode; TYPE_1__* f_mapping; } ;
struct block_device {int /*<<< orphan*/  bd_inode; struct gendisk* bd_disk; } ;
struct backing_dev_info {int ra_pages; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_4__ {int (* compat_ioctl ) (struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ;} ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
#define  BLKALIGNOFF 153 
#define  BLKBSZGET_32 152 
 unsigned int BLKBSZSET ; 
#define  BLKBSZSET_32 151 
#define  BLKDISCARD 150 
#define  BLKDISCARDZEROES 149 
#define  BLKFLSBUF 148 
#define  BLKFRAGET 147 
#define  BLKFRASET 146 
#define  BLKGETSIZE 145 
#define  BLKGETSIZE64_32 144 
#define  BLKIOMIN 143 
#define  BLKIOOPT 142 
#define  BLKPBSZGET 141 
#define  BLKPG 140 
#define  BLKRAGET 139 
#define  BLKRASET 138 
#define  BLKROGET 137 
#define  BLKROSET 136 
#define  BLKRRPART 135 
#define  BLKSECTGET 134 
#define  BLKSSZGET 133 
#define  BLKTRACESETUP32 132 
#define  BLKTRACESTART 131 
#define  BLKTRACESTOP 130 
#define  BLKTRACETEARDOWN 129 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EACCES ; 
 long EFBIG ; 
 long EINVAL ; 
 int ENOIOCTLCMD ; 
 long ENOTTY ; 
 int /*<<< orphan*/  FMODE_NDELAY ; 
#define  HDIO_GETGEO 128 
 int O_NDELAY ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int FUNC5 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct block_device*) ; 
 struct backing_dev_info* FUNC8 (struct block_device*) ; 
 int FUNC9 (struct block_device*,unsigned int,scalar_t__) ; 
 long FUNC10 (struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int FUNC11 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct block_device*,scalar_t__) ; 
 int FUNC14 (struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 long FUNC15 (struct block_device*,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 
 long FUNC16 (struct gendisk*,struct block_device*,scalar_t__) ; 
 scalar_t__ FUNC17 (unsigned long) ; 
 long FUNC18 (unsigned long,int) ; 
 long FUNC19 (unsigned long,int) ; 
 long FUNC20 (unsigned long,int) ; 
 long FUNC21 (unsigned long,int /*<<< orphan*/ ) ; 
 long FUNC22 (unsigned long,int) ; 
 long FUNC23 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 () ; 

long FUNC29(struct file *file, unsigned cmd, unsigned long arg)
{
	int ret = -ENOIOCTLCMD;
	struct inode *inode = file->f_mapping->host;
	struct block_device *bdev = inode->i_bdev;
	struct gendisk *disk = bdev->bd_disk;
	fmode_t mode = file->f_mode;
	struct backing_dev_info *bdi;
	loff_t size;

	/*
	 * O_NDELAY can be altered using fcntl(.., F_SETFL, ..), so we have
	 * to updated it before every ioctl.
	 */
	if (file->f_flags & O_NDELAY)
		mode |= FMODE_NDELAY;
	else
		mode &= ~FMODE_NDELAY;

	switch (cmd) {
	case HDIO_GETGEO:
		return FUNC16(disk, bdev, FUNC17(arg));
	case BLKPBSZGET:
		return FUNC21(arg, FUNC6(bdev));
	case BLKIOMIN:
		return FUNC21(arg, FUNC3(bdev));
	case BLKIOOPT:
		return FUNC21(arg, FUNC4(bdev));
	case BLKALIGNOFF:
		return FUNC18(arg, FUNC0(bdev));
	case BLKDISCARDZEROES:
		return FUNC21(arg, FUNC1(bdev));
	case BLKFLSBUF:
	case BLKROSET:
	case BLKDISCARD:
	/*
	 * the ones below are implemented in blkdev_locked_ioctl,
	 * but we call blkdev_ioctl, which gets the lock for us
	 */
	case BLKRRPART:
		return FUNC10(bdev, mode, cmd,
				(unsigned long)FUNC17(arg));
	case BLKBSZSET_32:
		return FUNC10(bdev, mode, BLKBSZSET,
				(unsigned long)FUNC17(arg));
	case BLKPG:
		return FUNC15(bdev, mode, cmd, FUNC17(arg));
	case BLKRAGET:
	case BLKFRAGET:
		if (!arg)
			return -EINVAL;
		bdi = FUNC8(bdev);
		if (bdi == NULL)
			return -ENOTTY;
		return FUNC19(arg,
				       (bdi->ra_pages * PAGE_CACHE_SIZE) / 512);
	case BLKROGET: /* compatible */
		return FUNC18(arg, FUNC7(bdev) != 0);
	case BLKBSZGET_32: /* get the logical block size (cf. BLKSSZGET) */
		return FUNC18(arg, FUNC11(bdev));
	case BLKSSZGET: /* get block device hardware sector size */
		return FUNC18(arg, FUNC5(bdev));
	case BLKSECTGET:
		return FUNC23(arg,
					 FUNC26(FUNC2(bdev)));
	case BLKRASET: /* compatible, but no compat_ptr (!) */
	case BLKFRASET:
		if (!FUNC12(CAP_SYS_ADMIN))
			return -EACCES;
		bdi = FUNC8(bdev);
		if (bdi == NULL)
			return -ENOTTY;
		bdi->ra_pages = (arg * 512) / PAGE_CACHE_SIZE;
		return 0;
	case BLKGETSIZE:
		size = FUNC24(bdev->bd_inode);
		if ((size >> 9) > ~0UL)
			return -EFBIG;
		return FUNC22(arg, size >> 9);

	case BLKGETSIZE64_32:
		return FUNC20(arg, FUNC24(bdev->bd_inode));

	case BLKTRACESETUP32:
		FUNC25();
		ret = FUNC13(bdev, FUNC17(arg));
		FUNC28();
		return ret;
	case BLKTRACESTART: /* compatible */
	case BLKTRACESTOP:  /* compatible */
	case BLKTRACETEARDOWN: /* compatible */
		FUNC25();
		ret = FUNC9(bdev, cmd, FUNC17(arg));
		FUNC28();
		return ret;
	default:
		if (disk->fops->compat_ioctl)
			ret = disk->fops->compat_ioctl(bdev, mode, cmd, arg);
		if (ret == -ENOIOCTLCMD)
			ret = FUNC14(bdev, mode, cmd, arg);
		return ret;
	}
}