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
struct file {scalar_t__ private_data; } ;
struct TYPE_6__ {TYPE_1__* disk; } ;
struct TYPE_5__ {int /*<<< orphan*/  async_qp; TYPE_3__* parentdp; } ;
struct TYPE_4__ {int /*<<< orphan*/  disk_name; } ;
typedef  TYPE_2__ Sg_fd ;
typedef  TYPE_3__ Sg_device ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct file*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(int fd, struct file *filp, int mode)
{
	Sg_device *sdp;
	Sg_fd *sfp;

	if ((!(sfp = (Sg_fd *) filp->private_data)) || (!(sdp = sfp->parentdp)))
		return -ENXIO;
	FUNC0(3, FUNC2("sg_fasync: %s, mode=%d\n",
				   sdp->disk->disk_name, mode));

	return FUNC1(fd, filp, mode, &sfp->async_qp);
}