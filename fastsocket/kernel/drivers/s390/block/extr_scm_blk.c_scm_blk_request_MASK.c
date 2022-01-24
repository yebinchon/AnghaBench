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
struct scm_request {int /*<<< orphan*/  aob; } ;
struct scm_device {int /*<<< orphan*/  dev; } ;
struct scm_blk_dev {int /*<<< orphan*/  queued_reqs; } ;
struct request_queue {struct scm_device* queuedata; } ;
struct request {scalar_t__ cmd_type; } ;

/* Variables and functions */
 scalar_t__ REQ_TYPE_FS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct request* FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 struct scm_blk_dev* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scm_blk_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct scm_request*) ; 
 scalar_t__ FUNC7 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct scm_blk_dev*,struct request*) ; 
 int /*<<< orphan*/  FUNC9 (struct scm_request*) ; 
 struct scm_request* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct scm_blk_dev*,struct scm_request*,struct request*) ; 
 int /*<<< orphan*/  FUNC12 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC13 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC14 (struct scm_request*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct request_queue *rq)
{
	struct scm_device *scmdev = rq->queuedata;
	struct scm_blk_dev *bdev = FUNC4(&scmdev->dev);
	struct scm_request *scmrq;
	struct request *req;
	int ret;

	while ((req = FUNC2(rq))) {
		if (req->cmd_type != REQ_TYPE_FS)
			continue;

		if (!FUNC8(bdev, req)) {
			FUNC5(bdev);
			return;
		}
		scmrq = FUNC10();
		if (!scmrq) {
			FUNC0(5, "no request");
			FUNC5(bdev);
			return;
		}
		FUNC11(bdev, scmrq, req);
		if (!FUNC14(scmrq)) {
			FUNC0(5, "cluster busy");
			FUNC9(scmrq);
			return;
		}
		if (FUNC7(scmrq)) {
			FUNC1(&bdev->queued_reqs);
			FUNC3(req);
			FUNC6(scmrq);
			return;
		}
		FUNC12(scmrq);
		FUNC1(&bdev->queued_reqs);
		FUNC3(req);

		ret = FUNC15(scmrq->aob);
		if (ret) {
			FUNC0(5, "no subchannel");
			FUNC13(scmrq);
			return;
		}
	}
}