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
struct dpages {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  vma; int /*<<< orphan*/  bvec; int /*<<< orphan*/  pl; } ;
struct TYPE_3__ {int type; TYPE_2__ ptr; int /*<<< orphan*/  offset; } ;
struct dm_io_request {TYPE_1__ mem; } ;

/* Variables and functions */
#define  DM_IO_BVEC 131 
#define  DM_IO_KMEM 130 
#define  DM_IO_PAGE_LIST 129 
#define  DM_IO_VMA 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dpages*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpages*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dpages*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpages*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dm_io_request *io_req, struct dpages *dp)
{
	/* Set up dpages based on memory type */
	switch (io_req->mem.type) {
	case DM_IO_PAGE_LIST:
		FUNC2(dp, io_req->mem.ptr.pl, io_req->mem.offset);
		break;

	case DM_IO_BVEC:
		FUNC0(dp, io_req->mem.ptr.bvec);
		break;

	case DM_IO_VMA:
		FUNC3(dp, io_req->mem.ptr.vma);
		break;

	case DM_IO_KMEM:
		FUNC1(dp, io_req->mem.ptr.addr);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}