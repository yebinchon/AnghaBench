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
struct mspro_block_data {scalar_t__ data_dir; int current_seg; unsigned int page_size; int current_page; int /*<<< orphan*/  q_lock; scalar_t__ has_request; int /*<<< orphan*/  block_req; TYPE_2__* req_sg; } ;
struct TYPE_3__ {scalar_t__ tpc; } ;
struct memstick_dev {int /*<<< orphan*/  mrq_complete; int /*<<< orphan*/  next_request; int /*<<< orphan*/  dev; TYPE_1__ current_mrq; } ;
struct TYPE_4__ {unsigned int length; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ MSPRO_CMD_STOP ; 
 scalar_t__ READ ; 
 int FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int /*<<< orphan*/  h_mspro_block_default_bad ; 
 struct mspro_block_data* FUNC5 (struct memstick_dev*) ; 
 int FUNC6 (struct memstick_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct memstick_dev *card, int error)
{
	struct mspro_block_data *msb = FUNC5(card);
	int chunk, cnt;
	unsigned int t_len = 0;
	unsigned long flags;

	FUNC7(&msb->q_lock, flags);
	FUNC4(&card->dev, "complete %d, %d\n", msb->has_request ? 1 : 0,
		error);

	if (msb->has_request) {
		/* Nothing to do - not really an error */
		if (error == -EAGAIN)
			error = 0;

		if (error || (card->current_mrq.tpc == MSPRO_CMD_STOP)) {
			if (msb->data_dir == READ) {
				for (cnt = 0; cnt < msb->current_seg; cnt++)
					t_len += msb->req_sg[cnt].length
						 / msb->page_size;

					if (msb->current_page)
						t_len += msb->current_page - 1;

					t_len *= msb->page_size;
			}
		} else
			t_len = FUNC1(msb->block_req);

		FUNC4(&card->dev, "transferred %x (%d)\n", t_len, error);

		if (error && !t_len)
			t_len = FUNC2(msb->block_req);

		chunk = FUNC0(msb->block_req, error, t_len);

		error = FUNC6(card, chunk);

		if (!error)
			goto out;
		else
			msb->has_request = 0;
	} else {
		if (!error)
			error = -EAGAIN;
	}

	card->next_request = h_mspro_block_default_bad;
	FUNC3(&card->mrq_complete);
out:
	FUNC8(&msb->q_lock, flags);
	return error;
}