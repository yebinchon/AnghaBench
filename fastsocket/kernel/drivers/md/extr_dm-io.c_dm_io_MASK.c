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
struct dpages {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; int /*<<< orphan*/  fn; } ;
struct dm_io_request {TYPE_1__ notify; int /*<<< orphan*/  bi_rw; int /*<<< orphan*/  client; } ;
struct dm_io_region {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,struct dm_io_region*,int /*<<< orphan*/ ,struct dpages*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dm_io_request*,struct dpages*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,struct dm_io_region*,int /*<<< orphan*/ ,struct dpages*,unsigned long*) ; 

int FUNC3(struct dm_io_request *io_req, unsigned num_regions,
	  struct dm_io_region *where, unsigned long *sync_error_bits)
{
	int r;
	struct dpages dp;

	r = FUNC1(io_req, &dp);
	if (r)
		return r;

	if (!io_req->notify.fn)
		return FUNC2(io_req->client, num_regions, where,
			       io_req->bi_rw, &dp, sync_error_bits);

	return FUNC0(io_req->client, num_regions, where, io_req->bi_rw,
			&dp, io_req->notify.fn, io_req->notify.context);
}