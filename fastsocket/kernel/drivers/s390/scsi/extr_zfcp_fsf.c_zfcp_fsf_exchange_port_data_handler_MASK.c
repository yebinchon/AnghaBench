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
struct zfcp_fsf_req {int status; struct fsf_qtcb* qtcb; } ;
struct TYPE_3__ {int /*<<< orphan*/  link_down_info; } ;
struct TYPE_4__ {int fsf_status; TYPE_1__ fsf_status_qual; } ;
struct fsf_qtcb {TYPE_2__ header; } ;

/* Variables and functions */
#define  FSF_EXCHANGE_CONFIG_DATA_INCOMPLETE 129 
#define  FSF_GOOD 128 
 int ZFCP_STATUS_FSFREQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_fsf_req*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct zfcp_fsf_req *req)
{
	struct fsf_qtcb *qtcb = req->qtcb;

	if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
		return;

	switch (qtcb->header.fsf_status) {
	case FSF_GOOD:
		FUNC0(req);
		break;
	case FSF_EXCHANGE_CONFIG_DATA_INCOMPLETE:
		FUNC0(req);
		FUNC1(req, "fsepdh1",
			&qtcb->header.fsf_status_qual.link_down_info);
		break;
	}
}