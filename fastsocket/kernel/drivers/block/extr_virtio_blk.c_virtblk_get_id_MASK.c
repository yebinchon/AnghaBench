#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct virtio_blk {TYPE_1__* disk; } ;
struct request {int /*<<< orphan*/  cmd_type; } ;
struct gendisk {struct virtio_blk* private_data; } ;
struct bio {int /*<<< orphan*/  cmd_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  REQ_TYPE_SPECIAL ; 
 int /*<<< orphan*/  VIRTIO_BLK_ID_BYTES ; 
 struct request* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,struct request*,int) ; 
 struct request* FUNC5 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 

__attribute__((used)) static int FUNC7(struct gendisk *disk, char *id_str)
{
	struct virtio_blk *vblk = disk->private_data;
	struct request *req;
	struct bio *bio;
	int err;

	bio = FUNC2(vblk->disk->queue, id_str, VIRTIO_BLK_ID_BYTES,
			   GFP_KERNEL);
	if (FUNC0(bio))
		return FUNC1(bio);

	req = FUNC5(vblk->disk->queue, bio, GFP_KERNEL);
	if (FUNC0(req)) {
		FUNC3(bio);
		return FUNC1(req);
	}

	req->cmd_type = REQ_TYPE_SPECIAL;
	err = FUNC4(vblk->disk->queue, vblk->disk, req, false);
	FUNC6(req);

	return err;
}