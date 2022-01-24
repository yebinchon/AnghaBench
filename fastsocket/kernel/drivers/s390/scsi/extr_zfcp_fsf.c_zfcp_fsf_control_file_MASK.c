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
typedef  int /*<<< orphan*/  u8 ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  completion; int /*<<< orphan*/  queue_req; TYPE_2__* qtcb; int /*<<< orphan*/  handler; } ;
struct zfcp_fsf_cfdc {int /*<<< orphan*/  sg; int /*<<< orphan*/  option; int /*<<< orphan*/  command; } ;
struct zfcp_adapter {int adapter_features; struct zfcp_qdio* qdio; } ;
struct qdio_buffer_element {int /*<<< orphan*/  sflags; } ;
struct fsf_qtcb_bottom_support {int /*<<< orphan*/  option; int /*<<< orphan*/  operation_subtype; } ;
struct TYPE_3__ {struct fsf_qtcb_bottom_support support; } ;
struct TYPE_4__ {TYPE_1__ bottom; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 struct zfcp_fsf_req* FUNC0 (int) ; 
 int /*<<< orphan*/  FSF_CFDC_OPERATION_SUBTYPE ; 
 int FSF_FEATURE_CFDC ; 
 int /*<<< orphan*/  FSF_MAX_SBALS_PER_REQ ; 
#define  FSF_QTCB_DOWNLOAD_CONTROL_FILE 129 
#define  FSF_QTCB_UPLOAD_CONTROL_FILE 128 
 scalar_t__ FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_WRITE ; 
 scalar_t__ ZFCP_CFDC_MAX_SIZE ; 
 int /*<<< orphan*/  ZFCP_FSF_REQUEST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_fsf_control_file_handler ; 
 struct zfcp_fsf_req* FUNC6 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC8 (struct zfcp_qdio*) ; 
 int FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct qdio_buffer_element* FUNC12 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct zfcp_qdio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

struct zfcp_fsf_req *FUNC16(struct zfcp_adapter *adapter,
					   struct zfcp_fsf_cfdc *fsf_cfdc)
{
	struct qdio_buffer_element *sbale;
	struct zfcp_qdio *qdio = adapter->qdio;
	struct zfcp_fsf_req *req = NULL;
	struct fsf_qtcb_bottom_support *bottom;
	int retval = -EIO;
	u8 direction;

	if (!(adapter->adapter_features & FSF_FEATURE_CFDC))
		return FUNC0(-EOPNOTSUPP);

	switch (fsf_cfdc->command) {
	case FSF_QTCB_DOWNLOAD_CONTROL_FILE:
		direction = SBAL_SFLAGS0_TYPE_WRITE;
		break;
	case FSF_QTCB_UPLOAD_CONTROL_FILE:
		direction = SBAL_SFLAGS0_TYPE_READ;
		break;
	default:
		return FUNC0(-EINVAL);
	}

	FUNC2(&qdio->req_q_lock);
	if (FUNC8(qdio))
		goto out;

	req = FUNC6(qdio, fsf_cfdc->command, NULL);
	if (FUNC1(req)) {
		retval = -EPERM;
		goto out;
	}

	req->handler = zfcp_fsf_control_file_handler;

	sbale = FUNC12(qdio, &req->queue_req);
	sbale[0].sflags |= direction;

	bottom = &req->qtcb->bottom.support;
	bottom->operation_subtype = FSF_CFDC_OPERATION_SUBTYPE;
	bottom->option = fsf_cfdc->option;

	retval = FUNC13(qdio, &req->queue_req,
					 direction, fsf_cfdc->sg,
					 FSF_MAX_SBALS_PER_REQ);
	if (retval ||
	    (FUNC11(fsf_cfdc->sg) != ZFCP_CFDC_MAX_SIZE)) {
		FUNC7(req);
		retval = -EIO;
		goto out;
	}
	FUNC14(qdio, &req->queue_req);
	if (FUNC5(adapter))
		FUNC15(qdio, &req->queue_req);

	FUNC10(req, ZFCP_FSF_REQUEST_TIMEOUT);
	retval = FUNC9(req);
out:
	FUNC3(&qdio->req_q_lock);

	if (!retval) {
		FUNC4(&req->completion);
		return req;
	}
	return FUNC0(retval);
}