#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct virtio_blk {int /*<<< orphan*/  vq; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blk_done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct virtio_blk *vblk)
{
	int err = 0;

	/* We expect one virtqueue, for output. */
	vblk->vq = FUNC2(vblk->vdev, blk_done, "requests");
	if (FUNC0(vblk->vq))
		err = FUNC1(vblk->vq);

	return err;
}