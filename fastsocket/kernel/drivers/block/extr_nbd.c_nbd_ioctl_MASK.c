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
struct nbd_device {scalar_t__ magic; int /*<<< orphan*/  tx_lock; TYPE_2__* disk; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_4__ {int /*<<< orphan*/  disk_name; } ;
struct TYPE_3__ {struct nbd_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  DBG_IOCTL ; 
 int EPERM ; 
 scalar_t__ LO_MAGIC ; 
 int FUNC1 (struct block_device*,struct nbd_device*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct block_device *bdev, fmode_t mode,
		     unsigned int cmd, unsigned long arg)
{
	struct nbd_device *lo = bdev->bd_disk->private_data;
	int error;

	if (!FUNC2(CAP_SYS_ADMIN))
		return -EPERM;

	FUNC0(lo->magic != LO_MAGIC);

	/* Anyone capable of this syscall can do *real bad* things */
	FUNC3(DBG_IOCTL, "%s: nbd_ioctl cmd=%s(0x%x) arg=%lu\n",
			lo->disk->disk_name, FUNC4(cmd), cmd, arg);

	FUNC5(&lo->tx_lock);
	error = FUNC1(bdev, lo, cmd, arg);
	FUNC6(&lo->tx_lock);

	return error;
}