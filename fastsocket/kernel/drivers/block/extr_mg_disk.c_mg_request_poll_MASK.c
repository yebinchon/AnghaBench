#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {struct mg_host* queuedata; } ;
struct mg_host {TYPE_1__* req; } ;
struct TYPE_5__ {scalar_t__ cmd_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ READ ; 
 scalar_t__ REQ_TYPE_FS ; 
 TYPE_1__* FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct request_queue *q)
{
	struct mg_host *host = q->queuedata;

	while (1) {
		if (!host->req) {
			host->req = FUNC0(q);
			if (!host->req)
				break;
		}

		if (FUNC5(host->req->cmd_type != REQ_TYPE_FS)) {
			FUNC1(host, -EIO);
			continue;
		}

		if (FUNC4(host->req) == READ)
			FUNC2(host->req);
		else
			FUNC3(host->req);
	}
}