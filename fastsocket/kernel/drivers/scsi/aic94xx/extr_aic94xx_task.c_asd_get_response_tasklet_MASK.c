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
typedef  int u8 ;
struct task_status_struct {int buf_valid_size; void* residual; int /*<<< orphan*/ * buf; } ;
struct ssp_response_iu {int dummy; } ;
struct ssp_frame_hdr {int dummy; } ;
struct sas_task {scalar_t__ task_proto; struct task_status_struct task_status; } ;
struct done_list_struct {scalar_t__ status_block; } ;
struct ata_task_resp {int /*<<< orphan*/ * ending_fis; scalar_t__ frame_len; } ;
struct TYPE_4__ {struct asd_dma_tok** edb_arr; int /*<<< orphan*/  tc_index_lock; } ;
struct asd_ha_struct {TYPE_1__* pcidev; TYPE_2__ seq; } ;
struct asd_dma_tok {void* vaddr; } ;
struct asd_ascb {int edb_index; struct sas_task* uldd_task; struct asd_ha_struct* ha; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ATA_RESP_FIS_SIZE ; 
 scalar_t__ SAS_PROTOCOL_SSP ; 
 int SAS_STATUS_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ascb*,int) ; 
 struct asd_ascb* FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sas_task*,struct ssp_response_iu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct asd_ascb *ascb,
				     struct done_list_struct *dl)
{
	struct asd_ha_struct *asd_ha = ascb->ha;
	struct sas_task *task = ascb->uldd_task;
	struct task_status_struct *ts = &task->task_status;
	unsigned long flags;
	struct tc_resp_sb_struct {
		__le16 index_escb;
		u8     len_lsb;
		u8     flags;
	} __attribute__ ((packed)) *resp_sb = (void *) dl->status_block;

/* 	int  size   = ((resp_sb->flags & 7) << 8) | resp_sb->len_lsb; */
	int  edb_id = ((resp_sb->flags & 0x70) >> 4)-1;
	struct asd_ascb *escb;
	struct asd_dma_tok *edb;
	void *r;

	FUNC7(&asd_ha->seq.tc_index_lock, flags);
	escb = FUNC2(&asd_ha->seq,
				 (int)FUNC3(resp_sb->index_escb));
	FUNC8(&asd_ha->seq.tc_index_lock, flags);

	if (!escb) {
		FUNC0("Uh-oh! No escb for this dl?!\n");
		return;
	}

	ts->buf_valid_size = 0;
	edb = asd_ha->seq.edb_arr[edb_id + escb->edb_index];
	r = edb->vaddr;
	if (task->task_proto == SAS_PROTOCOL_SSP) {
		struct ssp_response_iu *iu =
			r + 16 + sizeof(struct ssp_frame_hdr);

		ts->residual = FUNC4(*(__le32 *)r);

		FUNC6(&asd_ha->pcidev->dev, task, iu);
	}  else {
		struct ata_task_resp *resp = (void *) &ts->buf[0];

		ts->residual = FUNC4(*(__le32 *)r);

		if (SAS_STATUS_BUF_SIZE >= sizeof(*resp)) {
			resp->frame_len = FUNC3(*(__le16 *)(r+6));
			FUNC5(&resp->ending_fis[0], r+16, ATA_RESP_FIS_SIZE);
			ts->buf_valid_size = sizeof(*resp);
		}
	}

	FUNC1(escb, edb_id);
}