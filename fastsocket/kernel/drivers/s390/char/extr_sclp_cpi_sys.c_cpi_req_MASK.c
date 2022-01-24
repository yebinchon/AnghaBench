#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sclp_req {scalar_t__ status; scalar_t__ sccb; struct completion* callback_data; } ;
struct TYPE_5__ {int response_code; } ;
struct cpi_sccb {TYPE_1__ header; } ;
struct completion {int dummy; } ;
struct TYPE_6__ {int sclp_receive_mask; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int EVTYP_CTLPROGIDENT_MASK ; 
 scalar_t__ FUNC0 (struct sclp_req*) ; 
 int FUNC1 (struct sclp_req*) ; 
 scalar_t__ SCLP_REQ_DONE ; 
 int /*<<< orphan*/  FUNC2 (struct sclp_req*) ; 
 struct sclp_req* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct completion*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (struct sclp_req*) ; 
 TYPE_2__ sclp_cpi_event ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct completion*) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct completion completion;
	struct sclp_req *req;
	int rc;
	int response;

	rc = FUNC7(&sclp_cpi_event);
	if (rc)
		goto out;
	if (!(sclp_cpi_event.sclp_receive_mask & EVTYP_CTLPROGIDENT_MASK)) {
		rc = -EOPNOTSUPP;
		goto out_unregister;
	}

	req = FUNC3();
	if (FUNC0(req)) {
		rc = FUNC1(req);
		goto out_unregister;
	}

	FUNC4(&completion);
	req->callback_data = &completion;

	/* Add request to sclp queue */
	rc = FUNC6(req);
	if (rc)
		goto out_free_req;

	FUNC9(&completion);

	if (req->status != SCLP_REQ_DONE) {
		FUNC5("request failed (status=0x%02x)\n",
			   req->status);
		rc = -EIO;
		goto out_free_req;
	}

	response = ((struct cpi_sccb *) req->sccb)->header.response_code;
	if (response != 0x0020) {
		FUNC5("request failed with response code 0x%x\n",
			   response);
		rc = -EIO;
	}

out_free_req:
	FUNC2(req);

out_unregister:
	FUNC8(&sclp_cpi_event);

out:
	return rc;
}