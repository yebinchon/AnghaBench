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
struct zfcp_fsf_req {int status; struct fsf_status_read_buffer* data; struct zfcp_adapter* adapter; } ;
struct TYPE_6__ {int /*<<< orphan*/  status_read_data; } ;
struct zfcp_adapter {int /*<<< orphan*/  stat_work; int /*<<< orphan*/  work_queue; int /*<<< orphan*/  stat_miss; TYPE_3__ pool; int /*<<< orphan*/  adapter_features; TYPE_1__* ccw_device; int /*<<< orphan*/  dbf; } ;
struct TYPE_5__ {int /*<<< orphan*/ * word; } ;
struct fsf_status_read_buffer {int status_type; int status_subtype; TYPE_2__ payload; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCH_EVT_LINKDOWN ; 
 int /*<<< orphan*/  FCH_EVT_LINKUP ; 
#define  FSF_STATUS_READ_BIT_ERROR_THRESHOLD 136 
#define  FSF_STATUS_READ_CFDC_UPDATED 135 
#define  FSF_STATUS_READ_FEATURE_UPDATE_ALERT 134 
#define  FSF_STATUS_READ_INCOMING_ELS 133 
#define  FSF_STATUS_READ_LINK_DOWN 132 
#define  FSF_STATUS_READ_LINK_UP 131 
#define  FSF_STATUS_READ_NOTIFICATION_LOST 130 
#define  FSF_STATUS_READ_PORT_CLOSED 129 
#define  FSF_STATUS_READ_SENSE_DATA_AVAIL 128 
 int FSF_STATUS_READ_SUB_ACT_UPDATED ; 
 int FSF_STATUS_READ_SUB_INCOMING_ELS ; 
 int /*<<< orphan*/  ZFCP_SET ; 
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 int ZFCP_STATUS_FSFREQ_DISMISSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsf_status_read_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,struct fsf_status_read_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_adapter*,char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_adapter*,int,char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_adapter*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC13 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC15 (struct zfcp_fsf_req*) ; 

__attribute__((used)) static void FUNC16(struct zfcp_fsf_req *req)
{
	struct zfcp_adapter *adapter = req->adapter;
	struct fsf_status_read_buffer *sr_buf = req->data;

	if (req->status & ZFCP_STATUS_FSFREQ_DISMISSED) {
		FUNC6("dism", adapter->dbf, sr_buf);
		FUNC3(sr_buf, adapter->pool.status_read_data);
		FUNC13(req);
		return;
	}

	FUNC6("read", adapter->dbf, sr_buf);

	switch (sr_buf->status_type) {
	case FSF_STATUS_READ_PORT_CLOSED:
		FUNC15(req);
		break;
	case FSF_STATUS_READ_INCOMING_ELS:
		FUNC12(req);
		break;
	case FSF_STATUS_READ_SENSE_DATA_AVAIL:
		break;
	case FSF_STATUS_READ_BIT_ERROR_THRESHOLD:
		FUNC2(&adapter->ccw_device->dev,
			 "The error threshold for checksum statistics "
			 "has been exceeded\n");
		FUNC5(adapter->dbf, req);
		break;
	case FSF_STATUS_READ_LINK_DOWN:
		FUNC14(req);
		FUNC11(adapter, FCH_EVT_LINKDOWN, 0);
		break;
	case FSF_STATUS_READ_LINK_UP:
		FUNC1(&adapter->ccw_device->dev,
			 "The local link has been restored\n");
		/* All ports should be marked as ready to run again */
		FUNC9(adapter, "fssrh_1", NULL,
					       ZFCP_STATUS_COMMON_RUNNING,
					       ZFCP_SET);
		FUNC8(adapter,
					ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED |
					ZFCP_STATUS_COMMON_ERP_FAILED,
					"fssrh_2", req);
		FUNC11(adapter, FCH_EVT_LINKUP, 0);

		break;
	case FSF_STATUS_READ_NOTIFICATION_LOST:
		if (sr_buf->status_subtype & FSF_STATUS_READ_SUB_ACT_UPDATED)
			FUNC7(adapter, "fssrh_3",
							req);
		if (sr_buf->status_subtype & FSF_STATUS_READ_SUB_INCOMING_ELS)
			FUNC10(adapter);
		break;
	case FSF_STATUS_READ_CFDC_UPDATED:
		FUNC7(adapter, "fssrh_4", req);
		break;
	case FSF_STATUS_READ_FEATURE_UPDATE_ALERT:
		adapter->adapter_features = sr_buf->payload.word[0];
		break;
	}

	FUNC3(sr_buf, adapter->pool.status_read_data);
	FUNC13(req);

	FUNC0(&adapter->stat_miss);
	FUNC4(adapter->work_queue, &adapter->stat_work);
}