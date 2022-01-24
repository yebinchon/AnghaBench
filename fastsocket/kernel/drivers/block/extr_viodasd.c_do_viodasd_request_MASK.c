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
struct request_queue {int dummy; } ;
struct request {scalar_t__ cmd_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ REQ_TYPE_FS ; 
 scalar_t__ VIOMAXREQ ; 
 struct request* FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ num_req_outstanding ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct request_queue *q)
{
	struct request *req;

	/*
	 * If we already have the maximum number of requests
	 * outstanding to OS/400 just bail out. We'll come
	 * back later.
	 */
	while (num_req_outstanding < VIOMAXREQ) {
		req = FUNC0(q);
		if (req == NULL)
			return;
		/* check that request contains a valid command */
		if (req->cmd_type != REQ_TYPE_FS) {
			FUNC3(req, -EIO, FUNC1(req));
			continue;
		}
		/* Try sending the request */
		if (FUNC2(req) != 0)
			FUNC3(req, -EIO, FUNC1(req));
	}
}