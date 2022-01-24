#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct verify_chip_entry_84xx {int entry_count; void* data_seg_cnt; void* dseg_length; void** dseg_address; void* fw_seq_size; void* fw_size; void* fw_ver; void* options; int /*<<< orphan*/  entry_type; } ;
struct qla_hw_data {TYPE_5__* pdev; int /*<<< orphan*/  s_dma_pool; } ;
struct fc_bsg_reply {int dummy; } ;
struct TYPE_17__ {scalar_t__ sg_cnt; scalar_t__ payload_len; int /*<<< orphan*/  sg_list; } ;
struct fc_bsg_job {int reply_len; int /*<<< orphan*/  (* job_done ) (struct fc_bsg_job*) ;TYPE_6__ request_payload; TYPE_4__* reply; TYPE_3__* request; struct Scsi_Host* shost; } ;
struct access_chip_84xx {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_18__ {struct qla_hw_data* hw; } ;
typedef  TYPE_7__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  result; } ;
struct TYPE_12__ {scalar_t__* vendor_cmd; } ;
struct TYPE_13__ {TYPE_1__ h_vendor; } ;
struct TYPE_14__ {TYPE_2__ rqst_data; } ;

/* Variables and functions */
 scalar_t__ A84_ISSUE_UPDATE_DIAGFW_CMD ; 
 int DID_ERROR ; 
 int /*<<< orphan*/  DID_OK ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int VCO_DIAG_FW ; 
 int VCO_END_OF_DATA ; 
 int VCO_FORCE_UPDATE ; 
 int /*<<< orphan*/  VERIFY_CHIP_IOCB_TYPE ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct verify_chip_entry_84xx* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct verify_chip_entry_84xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct verify_chip_entry_84xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_7__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_7__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC15 (TYPE_7__*,struct verify_chip_entry_84xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,void*,scalar_t__) ; 
 TYPE_7__* FUNC17 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC18 (struct fc_bsg_job*) ; 

__attribute__((used)) static int
FUNC19(struct fc_bsg_job *bsg_job)
{
	struct Scsi_Host *host = bsg_job->shost;
	scsi_qla_host_t *vha = FUNC17(host);
	struct qla_hw_data *ha = vha->hw;
	struct verify_chip_entry_84xx *mn = NULL;
	dma_addr_t mn_dma, fw_dma;
	void *fw_buf = NULL;
	int rval = 0;
	uint32_t sg_cnt;
	uint32_t data_len;
	uint16_t options;
	uint32_t flag;
	uint32_t fw_ver;

	if (!FUNC0(ha)) {
		FUNC13(ql_dbg_user, vha, 0x7032,
		    "Not 84xx, exiting.\n");
		return -EINVAL;
	}

	sg_cnt = FUNC7(&ha->pdev->dev, bsg_job->request_payload.sg_list,
		bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
	if (!sg_cnt) {
		FUNC14(ql_log_warn, vha, 0x7033,
		    "dma_map_sg returned %d for request.\n", sg_cnt);
		return -ENOMEM;
	}

	if (sg_cnt != bsg_job->request_payload.sg_cnt) {
		FUNC14(ql_log_warn, vha, 0x7034,
		    "DMA mapping resulted in different sg counts, "
		    "request_sg_cnt: %x dma_request_sg_cnt: %x.\n",
		    bsg_job->request_payload.sg_cnt, sg_cnt);
		rval = -EAGAIN;
		goto done_unmap_sg;
	}

	data_len = bsg_job->request_payload.payload_len;
	fw_buf = FUNC5(&ha->pdev->dev, data_len,
		&fw_dma, GFP_KERNEL);
	if (!fw_buf) {
		FUNC14(ql_log_warn, vha, 0x7035,
		    "DMA alloc failed for fw_buf.\n");
		rval = -ENOMEM;
		goto done_unmap_sg;
	}

	FUNC16(bsg_job->request_payload.sg_list,
		bsg_job->request_payload.sg_cnt, fw_buf, data_len);

	mn = FUNC8(ha->s_dma_pool, GFP_KERNEL, &mn_dma);
	if (!mn) {
		FUNC14(ql_log_warn, vha, 0x7036,
		    "DMA alloc failed for fw buffer.\n");
		rval = -ENOMEM;
		goto done_free_fw_buf;
	}

	flag = bsg_job->request->rqst_data.h_vendor.vendor_cmd[1];
	fw_ver = FUNC11(*((uint32_t *)((uint32_t *)fw_buf + 2)));

	FUNC12(mn, 0, sizeof(struct access_chip_84xx));
	mn->entry_type = VERIFY_CHIP_IOCB_TYPE;
	mn->entry_count = 1;

	options = VCO_FORCE_UPDATE | VCO_END_OF_DATA;
	if (flag == A84_ISSUE_UPDATE_DIAGFW_CMD)
		options |= VCO_DIAG_FW;

	mn->options = FUNC3(options);
	mn->fw_ver =  FUNC4(fw_ver);
	mn->fw_size =  FUNC4(data_len);
	mn->fw_seq_size =  FUNC4(data_len);
	mn->dseg_address[0] = FUNC4(FUNC1(fw_dma));
	mn->dseg_address[1] = FUNC4(FUNC2(fw_dma));
	mn->dseg_length = FUNC4(data_len);
	mn->data_seg_cnt = FUNC3(1);

	rval = FUNC15(vha, mn, mn_dma, 0, 120);

	if (rval) {
		FUNC14(ql_log_warn, vha, 0x7037,
		    "Vendor request 84xx updatefw failed.\n");

		rval = (DID_ERROR << 16);
	} else {
		FUNC13(ql_dbg_user, vha, 0x7038,
		    "Vendor request 84xx updatefw completed.\n");

		bsg_job->reply_len = sizeof(struct fc_bsg_reply);
		bsg_job->reply->result = DID_OK;
	}

	FUNC9(ha->s_dma_pool, mn, mn_dma);

done_free_fw_buf:
	FUNC6(&ha->pdev->dev, data_len, fw_buf, fw_dma);

done_unmap_sg:
	FUNC10(&ha->pdev->dev, bsg_job->request_payload.sg_list,
		bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);

	if (!rval)
		bsg_job->job_done(bsg_job);
	return rval;
}