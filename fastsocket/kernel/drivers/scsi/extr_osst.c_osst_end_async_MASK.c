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
struct rq_map_data {int /*<<< orphan*/  pages; } ;
struct request {int /*<<< orphan*/  q; int /*<<< orphan*/  errors; struct osst_request* end_io_data; } ;
struct osst_tape {scalar_t__ write_pending; TYPE_2__* buffer; } ;
struct osst_request {scalar_t__ bio; scalar_t__ waiting; int /*<<< orphan*/  result; struct osst_tape* stp; } ;
struct TYPE_3__ {int /*<<< orphan*/  midlevel_result; } ;
struct TYPE_4__ {TYPE_1__ cmdstat; struct rq_map_data map_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct request *req, int update)
{
	struct osst_request *SRpnt = req->end_io_data;
	struct osst_tape *STp = SRpnt->stp;
	struct rq_map_data *mdata = &SRpnt->stp->buffer->map_data;

	STp->buffer->cmdstat.midlevel_result = SRpnt->result = req->errors;
#if DEBUG
	STp->write_pending = 0;
#endif
	if (SRpnt->waiting)
		FUNC2(SRpnt->waiting);

	if (SRpnt->bio) {
		FUNC3(mdata->pages);
		FUNC1(SRpnt->bio);
	}

	FUNC0(req->q, req);
}