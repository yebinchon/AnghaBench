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
struct request {int /*<<< orphan*/  buffer; TYPE_1__* rq_disk; } ;
struct floppy_state {scalar_t__ total_secs; scalar_t__ write_protected; int /*<<< orphan*/  disk_in; } ;
struct TYPE_2__ {struct floppy_state* private_data; } ;

/* Variables and functions */
 int EIO ; 
#define  READ 129 
#define  WRITE 128 
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 struct request* FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int FUNC4 (struct floppy_state*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct request*) ; 

__attribute__((used)) static void FUNC6(struct request_queue *q)
{
	struct request *req;
	struct floppy_state *fs;

	req = FUNC1(q);
	while (req) {
		int err = -EIO;

		fs = req->rq_disk->private_data;
		if (FUNC3(req) >= fs->total_secs)
			goto done;
		if (!fs->disk_in)
			goto done;
		if (FUNC5(req) == WRITE && fs->write_protected)
			goto done;

		switch (FUNC5(req)) {
		case WRITE:
			/* NOT IMPLEMENTED */
			break;
		case READ:
			err = FUNC4(fs, FUNC3(req),
						  FUNC2(req),
						  req->buffer);
			break;
		}
	done:
		if (!FUNC0(req, err))
			req = FUNC1(q);
	}
}