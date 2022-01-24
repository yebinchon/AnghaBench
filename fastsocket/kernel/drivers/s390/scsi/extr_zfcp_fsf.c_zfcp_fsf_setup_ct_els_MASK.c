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
struct zfcp_fsf_req {TYPE_2__* qtcb; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {unsigned int timeout; int /*<<< orphan*/  service_class; } ;
struct TYPE_6__ {TYPE_1__ support; } ;
struct TYPE_5__ {TYPE_3__ bottom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSF_CLASS_3 ; 
 unsigned int HZ ; 
 int FUNC0 (struct zfcp_fsf_req*,struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_fsf_req*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct zfcp_fsf_req *req,
				 struct scatterlist *sg_req,
				 struct scatterlist *sg_resp,
				 int max_sbals, unsigned int timeout)
{
	int ret;

	ret = FUNC0(req, sg_req, sg_resp, max_sbals);
	if (ret)
		return ret;

	/* common settings for ct/gs and els requests */
	req->qtcb->bottom.support.service_class = FSF_CLASS_3;
	if (timeout > 255)
		timeout = 255; /* max value accepted by hardware */
	req->qtcb->bottom.support.timeout = timeout;
	FUNC1(req, (timeout + 10) * HZ);

	return 0;
}