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
struct TYPE_3__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_4__ {TYPE_1__ ptr; int /*<<< orphan*/  type; } ;
struct dm_io_request {int /*<<< orphan*/  client; TYPE_2__ mem; int /*<<< orphan*/  bi_rw; } ;
struct dm_io_region {int /*<<< orphan*/  count; int /*<<< orphan*/  sector; int /*<<< orphan*/  bdev; } ;
struct dm_bufio_client {int /*<<< orphan*/  bdev; int /*<<< orphan*/  dm_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DM_IO_KMEM ; 
 int /*<<< orphan*/  WRITE_FLUSH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct dm_io_request*,int,struct dm_io_region*,int /*<<< orphan*/ *) ; 

int FUNC3(struct dm_bufio_client *c)
{
	struct dm_io_request io_req = {
		.bi_rw = WRITE_FLUSH,
		.mem.type = DM_IO_KMEM,
		.mem.ptr.addr = NULL,
		.client = c->dm_io,
	};
	struct dm_io_region io_reg = {
		.bdev = c->bdev,
		.sector = 0,
		.count = 0,
	};

	FUNC0(FUNC1());

	return FUNC2(&io_req, 1, &io_reg, NULL);
}