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
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  o_excl_wait; scalar_t__ exclude; TYPE_1__* disk; } ;
struct TYPE_5__ {int closed; int /*<<< orphan*/  f_ref; TYPE_3__* parentdp; } ;
struct TYPE_4__ {int /*<<< orphan*/  disk_name; } ;
typedef  TYPE_2__ Sg_fd ;
typedef  TYPE_3__ Sg_device ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sg_remove_sfp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *filp)
{
	Sg_device *sdp;
	Sg_fd *sfp;

	if ((!(sfp = (Sg_fd *) filp->private_data)) || (!(sdp = sfp->parentdp)))
		return -ENXIO;
	FUNC0(3, FUNC2("sg_release: %s\n", sdp->disk->disk_name));

	sfp->closed = 1;

	sdp->exclude = 0;
	FUNC3(&sdp->o_excl_wait);

	FUNC1(&sfp->f_ref, sg_remove_sfp);
	return 0;
}