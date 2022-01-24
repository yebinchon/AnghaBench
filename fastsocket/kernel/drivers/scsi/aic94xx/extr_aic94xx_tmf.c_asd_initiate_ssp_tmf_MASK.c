#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_13__ {int tmf; int /*<<< orphan*/  lun; } ;
struct TYPE_12__ {int /*<<< orphan*/  tptt; int /*<<< orphan*/  hashed_src_addr; int /*<<< orphan*/  hashed_dest_addr; int /*<<< orphan*/  frame_type; } ;
struct TYPE_14__ {int proto_conn_rate; int retry_count; void* index; void* itnl_to; void* conn_handle; void* sister_scb; TYPE_5__ ssp_task; TYPE_4__ ssp_frame; } ;
struct TYPE_9__ {int /*<<< orphan*/  opcode; } ;
struct scb {TYPE_6__ ssp_tmf; TYPE_1__ header; } ;
struct domain_device {int tproto; int linkrate; scalar_t__ lldd_dev; TYPE_3__* port; int /*<<< orphan*/ * hashed_sas_addr; } ;
struct asd_ha_struct {int dummy; } ;
struct asd_ascb {struct scb* scb; TYPE_7__* uldd_task; int /*<<< orphan*/ * completion; } ;
struct TYPE_15__ {int dl_opcode; } ;
struct TYPE_11__ {TYPE_2__* ha; } ;
struct TYPE_10__ {int /*<<< orphan*/ * hashed_sas_addr; struct asd_ha_struct* lldd_ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HASHED_SAS_ADDR_SIZE ; 
 int /*<<< orphan*/  INITIATE_SSP_TMF ; 
 int ITNL_TIMEOUT_CONST ; 
 int /*<<< orphan*/  QUERY_SSP_TASK ; 
 int SAS_PROTOCOL_SSP ; 
 int /*<<< orphan*/  SSP_TASK ; 
#define  TC_NO_ERROR 134 
#define  TF_NAK_RECV 133 
#define  TF_TMF_NO_CONN_HANDLE 132 
#define  TF_TMF_NO_CTX 131 
#define  TF_TMF_NO_TAG 130 
#define  TF_TMF_TAG_FREE 129 
#define  TF_TMF_TASK_DONE 128 
 int TMF_QUERY_TASK ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_ESUPP ; 
 int TMF_RESP_FUNC_FAILED ; 
 int TMF_RESP_INVALID_FRAME ; 
 struct asd_ascb* FUNC2 (struct asd_ha_struct*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ascb*) ; 
 int FUNC4 (struct asd_ascb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asd_tmf_tasklet_complete ; 
 int /*<<< orphan*/  asd_tmf_timedout ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_7__ tcs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct domain_device *dev, u8 *lun,
				int tmf, int index)
{
	struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;
	struct asd_ascb *ascb;
	int res = 1;
	struct scb *scb;
	FUNC0(completion);
	FUNC1(tcs);

	if (!(dev->tproto & SAS_PROTOCOL_SSP))
		return TMF_RESP_FUNC_ESUPP;

	ascb = FUNC2(asd_ha, &res, GFP_KERNEL);
	if (!ascb)
		return -ENOMEM;

	ascb->completion = &completion;
	ascb->uldd_task = &tcs;
	scb = ascb->scb;

	if (tmf == TMF_QUERY_TASK)
		scb->header.opcode = QUERY_SSP_TASK;
	else
		scb->header.opcode = INITIATE_SSP_TMF;

	scb->ssp_tmf.proto_conn_rate  = (1 << 4); /* SSP */
	scb->ssp_tmf.proto_conn_rate |= dev->linkrate;
	/* SSP frame header */
	scb->ssp_tmf.ssp_frame.frame_type = SSP_TASK;
	FUNC7(scb->ssp_tmf.ssp_frame.hashed_dest_addr,
	       dev->hashed_sas_addr, HASHED_SAS_ADDR_SIZE);
	FUNC7(scb->ssp_tmf.ssp_frame.hashed_src_addr,
	       dev->port->ha->hashed_sas_addr, HASHED_SAS_ADDR_SIZE);
	scb->ssp_tmf.ssp_frame.tptt = FUNC5(0xFFFF);
	/* SSP Task IU */
	FUNC7(scb->ssp_tmf.ssp_task.lun, lun, 8);
	scb->ssp_tmf.ssp_task.tmf = tmf;

	scb->ssp_tmf.sister_scb = FUNC6(0xFFFF);
	scb->ssp_tmf.conn_handle= FUNC6((u16)(unsigned long)
					      dev->lldd_dev);
	scb->ssp_tmf.retry_count = 1;
	scb->ssp_tmf.itnl_to = FUNC6(ITNL_TIMEOUT_CONST);
	if (tmf == TMF_QUERY_TASK)
		scb->ssp_tmf.index = FUNC6(index);

	res = FUNC4(ascb, asd_tmf_tasklet_complete,
				   asd_tmf_timedout);
	if (res)
		goto out_err;
	FUNC8(&completion);

	switch (tcs.dl_opcode) {
	case TC_NO_ERROR:
		res = TMF_RESP_FUNC_COMPLETE;
		break;
	case TF_NAK_RECV:
		res = TMF_RESP_INVALID_FRAME;
		break;
	case TF_TMF_TASK_DONE:
		res = TMF_RESP_FUNC_FAILED;
		break;
	case TF_TMF_NO_TAG:
	case TF_TMF_TAG_FREE: /* the tag is in the free list */
	case TF_TMF_NO_CONN_HANDLE: /* no such device */
		res = TMF_RESP_FUNC_COMPLETE;
		break;
	case TF_TMF_NO_CTX: /* not in seq, or proto != SSP */
		res = TMF_RESP_FUNC_ESUPP;
		break;
	default:
		/* Allow TMF response codes to propagate upwards */
		res = tcs.dl_opcode;
		break;
	}
	return res;
out_err:
	FUNC3(ascb);
	return res;
}