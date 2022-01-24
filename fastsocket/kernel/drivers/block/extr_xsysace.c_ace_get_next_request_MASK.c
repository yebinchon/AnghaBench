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
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 

struct request *FUNC3(struct request_queue * q)
{
	struct request *req;

	while ((req = FUNC1(q)) != NULL) {
		if (req->cmd_type == REQ_TYPE_FS)
			break;
		FUNC2(req);
		FUNC0(req, -EIO);
	}
	return req;
}