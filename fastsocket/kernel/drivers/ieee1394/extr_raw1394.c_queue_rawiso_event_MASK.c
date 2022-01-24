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
struct TYPE_4__ {int /*<<< orphan*/  generation; int /*<<< orphan*/  type; } ;
struct pending_request {TYPE_2__ req; struct file_info* file_info; } ;
struct file_info {int /*<<< orphan*/  reqlists_lock; TYPE_1__* iso_handle; int /*<<< orphan*/  host; } ;
struct TYPE_3__ {int /*<<< orphan*/  overflows; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RAW1394_REQ_RAWISO_ACTIVITY ; 
 struct pending_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pending_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct file_info *fi)
{
	unsigned long flags;

	FUNC5(&fi->reqlists_lock, flags);

	/* only one ISO activity event may be in the queue */
	if (!FUNC2(fi)) {
		struct pending_request *req =
		    FUNC0(GFP_ATOMIC);

		if (req) {
			req->file_info = fi;
			req->req.type = RAW1394_REQ_RAWISO_ACTIVITY;
			req->req.generation = FUNC4(fi->host);
			FUNC1(req);
		} else {
			/* on allocation failure, signal an overflow */
			if (fi->iso_handle) {
				FUNC3(&fi->iso_handle->overflows);
			}
		}
	}
	FUNC6(&fi->reqlists_lock, flags);
}