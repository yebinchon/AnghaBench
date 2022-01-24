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
struct TYPE_2__ {int /*<<< orphan*/  recvb; scalar_t__ misc; int /*<<< orphan*/  length; int /*<<< orphan*/  sendb; } ;
struct pending_request {TYPE_1__ req; } ;
struct file_info {int cfgrom_upd; int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/  quadlet_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pending_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file_info *fi, struct pending_request *req)
{
	int ret = 0;
	quadlet_t *data = FUNC6(req->req.length, GFP_KERNEL);
	if (!data)
		return -ENOMEM;
	if (FUNC0(data, FUNC4(req->req.sendb), req->req.length)) {
		ret = -EFAULT;
	} else {
		int status = FUNC3(fi->host,
						    data, req->req.length,
						    (unsigned char)req->req.
						    misc);
		if (FUNC1
		    (FUNC4(req->req.recvb), &status, sizeof(status)))
			ret = -ENOMEM;
	}
	FUNC5(data);
	if (ret >= 0) {
		FUNC2(req);	/* we have to free the request, because we queue no response, and therefore nobody will free it */
		fi->cfgrom_upd = 1;
	}
	return ret;
}