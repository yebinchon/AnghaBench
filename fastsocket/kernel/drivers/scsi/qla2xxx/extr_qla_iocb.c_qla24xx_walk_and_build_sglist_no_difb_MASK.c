#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct scatterlist {int dummy; } ;
struct qla_hw_data {int /*<<< orphan*/  dl_dma_pool; } ;
struct qla2_sgx {scalar_t__ dma_len; scalar_t__ dma_addr; TYPE_4__* sp; int /*<<< orphan*/  cur_sg; int /*<<< orphan*/  tot_bytes; } ;
struct dsd_dma {scalar_t__ dsd_list_dma; int /*<<< orphan*/  list; void* dsd_addr; } ;
struct crc_context {int /*<<< orphan*/  dsd_list; } ;
struct TYPE_8__ {scalar_t__ ctx; } ;
struct TYPE_9__ {TYPE_2__ scmd; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; TYPE_3__ u; } ;
typedef  TYPE_4__ srb_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_7__ {scalar_t__ sector_size; } ;

/* Variables and functions */
 struct scsi_cmnd* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ QLA_DSDS_PER_IOCB ; 
 int /*<<< orphan*/  SRB_CRC_CTX_DSD_VALID ; 
 void* FUNC3 (scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsd_dma*) ; 
 struct dsd_dma* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct qla2_sgx*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (scalar_t__,struct qla2_sgx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC13 (struct scatterlist*) ; 
 scalar_t__ FUNC14 (struct scatterlist*) ; 
 struct scatterlist* FUNC15 (struct scatterlist*) ; 

__attribute__((used)) static int
FUNC16(struct qla_hw_data *ha, srb_t *sp,
	uint32_t *dsd, uint16_t tot_dsds)
{
	void *next_dsd;
	uint8_t avail_dsds = 0;
	uint32_t dsd_list_len;
	struct dsd_dma *dsd_ptr;
	struct scatterlist *sg_prot;
	uint32_t *cur_dsd = dsd;
	uint16_t	used_dsds = tot_dsds;

	uint32_t	prot_int;
	uint32_t	partial;
	struct qla2_sgx sgx;
	dma_addr_t	sle_dma;
	uint32_t	sle_dma_len, tot_prot_dma_len = 0;
	struct scsi_cmnd *cmd = FUNC0(sp);

	prot_int = cmd->device->sector_size;

	FUNC8(&sgx, 0, sizeof(struct qla2_sgx));
	sgx.tot_bytes = FUNC10(cmd);
	sgx.cur_sg = FUNC12(cmd);
	sgx.sp = sp;

	sg_prot = FUNC11(cmd);

	while (FUNC9(prot_int, &sgx, &partial)) {

		sle_dma = sgx.dma_addr;
		sle_dma_len = sgx.dma_len;
alloc_and_fill:
		/* Allocate additional continuation packets? */
		if (avail_dsds == 0) {
			avail_dsds = (used_dsds > QLA_DSDS_PER_IOCB) ?
					QLA_DSDS_PER_IOCB : used_dsds;
			dsd_list_len = (avail_dsds + 1) * 12;
			used_dsds -= avail_dsds;

			/* allocate tracking DS */
			dsd_ptr = FUNC6(sizeof(struct dsd_dma), GFP_ATOMIC);
			if (!dsd_ptr)
				return 1;

			/* allocate new list */
			dsd_ptr->dsd_addr = next_dsd =
			    FUNC4(ha->dl_dma_pool, GFP_ATOMIC,
				&dsd_ptr->dsd_list_dma);

			if (!next_dsd) {
				/*
				 * Need to cleanup only this dsd_ptr, rest
				 * will be done by sp_free_dma()
				 */
				FUNC5(dsd_ptr);
				return 1;
			}

			FUNC7(&dsd_ptr->list,
			    &((struct crc_context *)sp->u.scmd.ctx)->dsd_list);

			sp->flags |= SRB_CRC_CTX_DSD_VALID;

			/* add new list to cmd iocb or last list */
			*cur_dsd++ = FUNC3(FUNC1(dsd_ptr->dsd_list_dma));
			*cur_dsd++ = FUNC3(FUNC2(dsd_ptr->dsd_list_dma));
			*cur_dsd++ = dsd_list_len;
			cur_dsd = (uint32_t *)next_dsd;
		}
		*cur_dsd++ = FUNC3(FUNC1(sle_dma));
		*cur_dsd++ = FUNC3(FUNC2(sle_dma));
		*cur_dsd++ = FUNC3(sle_dma_len);
		avail_dsds--;

		if (partial == 0) {
			/* Got a full protection interval */
			sle_dma = FUNC13(sg_prot) + tot_prot_dma_len;
			sle_dma_len = 8;

			tot_prot_dma_len += sle_dma_len;
			if (tot_prot_dma_len == FUNC14(sg_prot)) {
				tot_prot_dma_len = 0;
				sg_prot = FUNC15(sg_prot);
			}

			partial = 1; /* So as to not re-enter this block */
			goto alloc_and_fill;
		}
	}
	/* Null termination */
	*cur_dsd++ = 0;
	*cur_dsd++ = 0;
	*cur_dsd++ = 0;
	return 0;
}