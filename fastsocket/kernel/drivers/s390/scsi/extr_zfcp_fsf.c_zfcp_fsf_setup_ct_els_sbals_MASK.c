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
typedef  int u32 ;
struct zfcp_qdio {int dummy; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  queue_req; struct fsf_qtcb* qtcb; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int adapter_features; struct zfcp_qdio* qdio; } ;
struct scatterlist {int dummy; } ;
struct qdio_buffer_element {int dummy; } ;
struct TYPE_3__ {void* resp_buf_length; void* req_buf_length; } ;
struct TYPE_4__ {TYPE_1__ support; } ;
struct fsf_qtcb {TYPE_2__ bottom; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int FSF_FEATURE_ELS_CT_CHAINED_SBALS ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_WRITE_READ ; 
 scalar_t__ FUNC0 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_buffer_element*,struct scatterlist*,struct scatterlist*) ; 
 void* FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 
 struct qdio_buffer_element* FUNC5 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct zfcp_qdio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_qdio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct zfcp_fsf_req *req,
				       struct scatterlist *sg_req,
				       struct scatterlist *sg_resp,
				       int max_sbals)
{
	struct zfcp_adapter *adapter = req->adapter;
	struct qdio_buffer_element *sbale = FUNC5(adapter->qdio,
							       &req->queue_req);
	struct zfcp_qdio *qdio = adapter->qdio;
	struct fsf_qtcb *qtcb = req->qtcb;
	u32 feat = adapter->adapter_features;

	if (FUNC0(adapter)) {
		if (FUNC6(qdio, &req->queue_req,
					    SBAL_SFLAGS0_TYPE_WRITE_READ,
					    sg_req, max_sbals))
			return -EIO;
		if (FUNC6(qdio, &req->queue_req,
					    SBAL_SFLAGS0_TYPE_WRITE_READ,
					    sg_resp, max_sbals))
			return -EIO;

		FUNC7(qdio, &req->queue_req,
				       FUNC4(sg_req));
		FUNC8(qdio, &req->queue_req);
		FUNC9(qdio, &req->queue_req);
		return 0;
	}

	/* use single, unchained SBAL if it can hold the request */
	if (FUNC1(sg_req) && FUNC1(sg_resp)) {
		FUNC2(sbale, sg_req, sg_resp);
		return 0;
	}

	if (!(feat & FSF_FEATURE_ELS_CT_CHAINED_SBALS))
		return -EOPNOTSUPP;

	if (FUNC6(qdio, &req->queue_req,
				    SBAL_SFLAGS0_TYPE_WRITE_READ,
				    sg_req, max_sbals))
		return -EIO;

	qtcb->bottom.support.req_buf_length = FUNC3(sg_req);

	FUNC8(qdio, &req->queue_req);
	FUNC10(qdio, &req->queue_req);

	if (FUNC6(qdio, &req->queue_req,
				    SBAL_SFLAGS0_TYPE_WRITE_READ,
				    sg_resp, max_sbals))
		return -EIO;

	qtcb->bottom.support.resp_buf_length = FUNC3(sg_resp);

	FUNC8(qdio, &req->queue_req);

	return 0;
}