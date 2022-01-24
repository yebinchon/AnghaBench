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
struct request {int dummy; } ;
struct dasd_ccw_req {TYPE_3__* block; scalar_t__ callback_data; } ;
struct TYPE_6__ {TYPE_2__* base; } ;
struct TYPE_5__ {TYPE_1__* discipline; } ;
struct TYPE_4__ {int (* free_cp ) (struct dasd_ccw_req*,struct request*) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct dasd_ccw_req*,struct request*) ; 
 int FUNC2 (struct dasd_ccw_req*,struct request*) ; 

__attribute__((used)) static void FUNC3(struct dasd_ccw_req *cqr)
{
	struct request *req;
	int status;
	int error = 0;

	req = (struct request *) cqr->callback_data;
	FUNC1(cqr->block, cqr, req);
	status = cqr->block->base->discipline->free_cp(cqr, req);
	if (status <= 0)
		error = status ? status : -EIO;
	FUNC0(req, error);
}