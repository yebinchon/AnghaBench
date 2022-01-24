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
struct request_queue {int dummy; } ;
struct request {scalar_t__ cmd_type; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cmd; TYPE_1__* rq_disk; } ;
struct blkfront_info {int /*<<< orphan*/  ring; } ;
struct TYPE_2__ {struct blkfront_info* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ REQ_TYPE_FS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*) ; 
 scalar_t__ FUNC9 (struct request*) ; 
 int /*<<< orphan*/  FUNC10 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (struct request*) ; 

__attribute__((used)) static void FUNC13(struct request_queue *rq)
{
	struct blkfront_info *info = NULL;
	struct request *req;
	int queued;

	FUNC11("Entered do_blkif_request\n");

	queued = 0;

	while ((req = FUNC2(rq)) != NULL) {
		info = req->rq_disk->private_data;

		if (FUNC0(&info->ring))
			goto wait;

		FUNC7(req);

		if (req->cmd_type != REQ_TYPE_FS) {
			FUNC1(req, -EIO);
			continue;
		}

		FUNC11("do_blk_req %p: cmd %p, sec %lx, "
			 "(%u/%u) buffer:%p [%s]\n",
			 req, req->cmd, (unsigned long)FUNC5(req),
			 FUNC4(req), FUNC6(req),
			 req->buffer, FUNC12(req) ? "write" : "read");

		if (FUNC9(req)) {
			FUNC3(rq, req);
wait:
			/* Avoid pointless unplugs. */
			FUNC8(rq);
			break;
		}

		queued++;
	}

	if (queued != 0)
		FUNC10(info);
}