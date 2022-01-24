#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct osst_tape {int update_frame_cntr; int first_mark_ppos; int wrt_pass_cntr; int first_data_ppos; int capacity; int filemark_cnt; int last_mark_ppos; int last_mark_lbn; scalar_t__ raw; TYPE_1__* buffer; } ;
struct TYPE_9__ {void* last_frame_ppos; void* first_frame_ppos; void* wrt_pass_cntr; void* par_desc_ver; int /*<<< orphan*/  partition_num; } ;
typedef  TYPE_3__ os_partition_t ;
struct TYPE_10__ {int dat_sz; int entry_cnt; TYPE_2__* dat_list; int /*<<< orphan*/  reserved3; int /*<<< orphan*/  reserved1; } ;
typedef  TYPE_4__ os_dat_t ;
struct TYPE_11__ {int frame_type; void* last_mark_lbn; void* last_mark_ppos; void* phys_fm; void* filemark_cnt; void* logical_blk_num; void* logical_blk_num_high; void* frame_seq_num; void* update_frame_cntr; void* next_mark_ppos; void* hdwr; int /*<<< orphan*/  application_sig; void* format_id; TYPE_4__ dat; TYPE_3__ partition; } ;
typedef  TYPE_5__ os_aux_t ;
struct TYPE_8__ {int /*<<< orphan*/  reserved; int /*<<< orphan*/  flags; void* blk_cnt; void* blk_sz; } ;
struct TYPE_7__ {TYPE_5__* aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  OS_CONFIG_PARTITION ; 
 int /*<<< orphan*/  OS_DATA_PARTITION ; 
 int /*<<< orphan*/  OS_DAT_FLAGS_DATA ; 
 int /*<<< orphan*/  OS_DAT_FLAGS_MARK ; 
#define  OS_FRAME_TYPE_DATA 131 
#define  OS_FRAME_TYPE_EOD 130 
#define  OS_FRAME_TYPE_HEADER 129 
#define  OS_FRAME_TYPE_MARKER 128 
 void* OS_PARTITION_VERSION ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct osst_tape * STp, int frame_type, int frame_seq_number,
					 int logical_blk_num, int blk_sz, int blk_cnt)
{
	os_aux_t       *aux = STp->buffer->aux;
	os_partition_t *par = &aux->partition;
	os_dat_t       *dat = &aux->dat;

	if (STp->raw) return;

	FUNC3(aux, 0, sizeof(*aux));
	aux->format_id = FUNC0(0);
	FUNC2(aux->application_sig, "LIN4", 4);
	aux->hdwr = FUNC0(0);
	aux->frame_type = frame_type;

	switch (frame_type) {
	  case	OS_FRAME_TYPE_HEADER:
		aux->update_frame_cntr    = FUNC0(STp->update_frame_cntr);
		par->partition_num        = OS_CONFIG_PARTITION;
		par->par_desc_ver         = OS_PARTITION_VERSION;
		par->wrt_pass_cntr        = FUNC1(0xffff);
		/* 0-4 = reserved, 5-9 = header, 2990-2994 = header, 2995-2999 = reserved */
		par->first_frame_ppos     = FUNC0(0);
		par->last_frame_ppos      = FUNC0(0xbb7);
		aux->frame_seq_num        = FUNC0(0);
		aux->logical_blk_num_high = FUNC0(0);
		aux->logical_blk_num      = FUNC0(0);
		aux->next_mark_ppos       = FUNC0(STp->first_mark_ppos);
		break;
	  case	OS_FRAME_TYPE_DATA:
	  case	OS_FRAME_TYPE_MARKER:
		dat->dat_sz = 8;
		dat->reserved1 = 0;
		dat->entry_cnt = 1;
		dat->reserved3 = 0;
		dat->dat_list[0].blk_sz   = FUNC0(blk_sz);
		dat->dat_list[0].blk_cnt  = FUNC1(blk_cnt);
		dat->dat_list[0].flags    = frame_type==OS_FRAME_TYPE_MARKER?
							OS_DAT_FLAGS_MARK:OS_DAT_FLAGS_DATA;
		dat->dat_list[0].reserved = 0;
	  case	OS_FRAME_TYPE_EOD:
		aux->update_frame_cntr    = FUNC0(0);
		par->partition_num        = OS_DATA_PARTITION;
		par->par_desc_ver         = OS_PARTITION_VERSION;
		par->wrt_pass_cntr        = FUNC1(STp->wrt_pass_cntr);
		par->first_frame_ppos     = FUNC0(STp->first_data_ppos);
		par->last_frame_ppos      = FUNC0(STp->capacity);
		aux->frame_seq_num        = FUNC0(frame_seq_number);
		aux->logical_blk_num_high = FUNC0(0);
		aux->logical_blk_num      = FUNC0(logical_blk_num);
		break;
	  default: ; /* probably FILL */
	}
	aux->filemark_cnt = FUNC0(STp->filemark_cnt);
	aux->phys_fm = FUNC0(0xffffffff);
	aux->last_mark_ppos = FUNC0(STp->last_mark_ppos);
	aux->last_mark_lbn  = FUNC0(STp->last_mark_lbn);
}