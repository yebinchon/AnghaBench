#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mspro_param_register {int /*<<< orphan*/  data_address; scalar_t__ tpc_param; int /*<<< orphan*/  data_count; int /*<<< orphan*/  system; } ;
struct mspro_block_data {unsigned int page_size; scalar_t__ data_dir; TYPE_1__* block_req; int /*<<< orphan*/  queue; int /*<<< orphan*/  mrq_handler; int /*<<< orphan*/  transfer_cmd; int /*<<< orphan*/  system; int /*<<< orphan*/  seg_count; int /*<<< orphan*/  req_sg; scalar_t__ current_seg; scalar_t__ current_page; } ;
struct memstick_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  host; int /*<<< orphan*/  current_mrq; int /*<<< orphan*/  next_request; } ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  param ;
struct TYPE_7__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  MSPRO_CMD_READ_DATA ; 
 int /*<<< orphan*/  MSPRO_CMD_WRITE_DATA ; 
 int /*<<< orphan*/  MS_TPC_WRITE_REG ; 
 scalar_t__ READ ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  h_mspro_block_req_init ; 
 int /*<<< orphan*/  h_mspro_block_transfer_data ; 
 struct mspro_block_data* FUNC9 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mspro_param_register*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int,unsigned int) ; 

__attribute__((used)) static int FUNC14(struct memstick_dev *card, int chunk)
{
	struct mspro_block_data *msb = FUNC9(card);
	sector_t t_sec;
	unsigned int count;
	struct mspro_param_register param;

try_again:
	while (chunk) {
		msb->current_page = 0;
		msb->current_seg = 0;
		msb->seg_count = FUNC4(msb->block_req->q,
					       msb->block_req,
					       msb->req_sg);

		if (!msb->seg_count) {
			chunk = FUNC0(msb->block_req, -ENOMEM);
			continue;
		}

		t_sec = FUNC5(msb->block_req) << 9;
		FUNC13(t_sec, msb->page_size);

		count = FUNC3(msb->block_req);
		count /= msb->page_size;

		param.system = msb->system;
		param.data_count = FUNC6(count);
		param.data_address = FUNC7((uint32_t)t_sec);
		param.tpc_param = 0;

		msb->data_dir = FUNC12(msb->block_req);
		msb->transfer_cmd = msb->data_dir == READ
				    ? MSPRO_CMD_READ_DATA
				    : MSPRO_CMD_WRITE_DATA;

		FUNC8(&card->dev, "data transfer: cmd %x, "
			"lba %x, count %x\n", msb->transfer_cmd,
			FUNC1(param.data_address), count);

		card->next_request = h_mspro_block_req_init;
		msb->mrq_handler = h_mspro_block_transfer_data;
		FUNC10(&card->current_mrq, MS_TPC_WRITE_REG,
				  &param, sizeof(param));
		FUNC11(card->host);
		return 0;
	}

	FUNC8(&card->dev, "blk_fetch\n");
	msb->block_req = FUNC2(msb->queue);
	if (!msb->block_req) {
		FUNC8(&card->dev, "issue end\n");
		return -EAGAIN;
	}

	FUNC8(&card->dev, "trying again\n");
	chunk = 1;
	goto try_again;
}