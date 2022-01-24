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
struct zfcp_fsf_req {struct zfcp_fsf_req* qtcb; struct zfcp_fsf_req* pool; TYPE_2__* adapter; } ;
struct TYPE_6__ {int /*<<< orphan*/  qtcb_cache; } ;
struct TYPE_4__ {struct zfcp_fsf_req* qtcb_pool; } ;
struct TYPE_5__ {TYPE_1__ pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC2 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_fsf_req*,struct zfcp_fsf_req*) ; 
 TYPE_3__ zfcp_data ; 

void FUNC4(struct zfcp_fsf_req *req)
{
	if (FUNC2(req->pool)) {
		if (FUNC2(req->qtcb))
			FUNC3(req->qtcb, req->adapter->pool.qtcb_pool);
		FUNC3(req, req->pool);
		return;
	}

	if (FUNC2(req->qtcb))
		FUNC1(zfcp_data.qtcb_cache, req->qtcb);
	FUNC0(req);
}