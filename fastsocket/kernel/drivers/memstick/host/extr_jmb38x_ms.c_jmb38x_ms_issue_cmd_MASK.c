#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct memstick_host {int /*<<< orphan*/  dev; } ;
struct jmb38x_ms_host {int cmd_flags; unsigned int* io_word; scalar_t__ addr; TYPE_2__* req; scalar_t__ timeout_jiffies; int /*<<< orphan*/  timer; TYPE_1__* chip; scalar_t__ io_pos; scalar_t__ block_pos; } ;
struct TYPE_8__ {unsigned int length; } ;
struct TYPE_7__ {int error; int tpc; scalar_t__ data_dir; unsigned char* data; unsigned int data_len; TYPE_3__ sg; scalar_t__ long_data; scalar_t__ need_card_int; } ;
struct TYPE_6__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ BLOCK ; 
 int BLOCK_COUNT_MASK ; 
 unsigned int BLOCK_SIZE_MASK ; 
 scalar_t__ DMA_ADDRESS ; 
 scalar_t__ DMA_CONTROL ; 
 unsigned int DMA_CONTROL_ENABLE ; 
 int DMA_DATA ; 
 int ENOMEM ; 
 int ETIME ; 
 scalar_t__ HOST_CONTROL ; 
 unsigned int HOST_CONTROL_LED ; 
 scalar_t__ INT_SIGNAL_ENABLE ; 
 scalar_t__ INT_STATUS ; 
 scalar_t__ INT_STATUS_ENABLE ; 
 unsigned int INT_STATUS_FIFO_RRDY ; 
 unsigned int INT_STATUS_FIFO_WRDY ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ READ ; 
 int REG_DATA ; 
 scalar_t__ STATUS ; 
 unsigned int STATUS_HAS_MEDIA ; 
 scalar_t__ TPC ; 
 unsigned int TPC_DATA_SEL ; 
 unsigned int TPC_DIR ; 
 scalar_t__ TPC_P0 ; 
 scalar_t__ TPC_P1 ; 
 unsigned int TPC_WAIT_INT ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct jmb38x_ms_host*) ; 
 struct jmb38x_ms_host* FUNC2 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  no_dma ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 unsigned int FUNC6 (TYPE_3__*) ; 
 unsigned int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct memstick_host *msh)
{
	struct jmb38x_ms_host *host = FUNC2(msh);
	unsigned char *data;
	unsigned int data_len, cmd, t_val;

	if (!(STATUS_HAS_MEDIA & FUNC5(host->addr + STATUS))) {
		FUNC0(&msh->dev, "no media status\n");
		host->req->error = -ETIME;
		return host->req->error;
	}

	FUNC0(&msh->dev, "control %08x\n", FUNC5(host->addr + HOST_CONTROL));
	FUNC0(&msh->dev, "status %08x\n", FUNC5(host->addr + INT_STATUS));
	FUNC0(&msh->dev, "hstatus %08x\n", FUNC5(host->addr + STATUS));

	host->cmd_flags = 0;
	host->block_pos = 0;
	host->io_pos = 0;
	host->io_word[0] = 0;
	host->io_word[1] = 0;

	cmd = host->req->tpc << 16;
	cmd |= TPC_DATA_SEL;

	if (host->req->data_dir == READ)
		cmd |= TPC_DIR;
	if (host->req->need_card_int)
		cmd |= TPC_WAIT_INT;

	data = host->req->data;

	if (!no_dma)
		host->cmd_flags |= DMA_DATA;

	if (host->req->long_data) {
		data_len = host->req->sg.length;
	} else {
		data_len = host->req->data_len;
		host->cmd_flags &= ~DMA_DATA;
	}

	if (data_len <= 8) {
		cmd &= ~(TPC_DATA_SEL | 0xf);
		host->cmd_flags |= REG_DATA;
		cmd |= data_len & 0xf;
		host->cmd_flags &= ~DMA_DATA;
	}

	if (host->cmd_flags & DMA_DATA) {
		if (1 != FUNC4(host->chip->pdev, &host->req->sg, 1,
				    host->req->data_dir == READ
				    ? PCI_DMA_FROMDEVICE
				    : PCI_DMA_TODEVICE)) {
			host->req->error = -ENOMEM;
			return host->req->error;
		}
		data_len = FUNC7(&host->req->sg);
		FUNC8(FUNC6(&host->req->sg),
		       host->addr + DMA_ADDRESS);
		FUNC8(((1 << 16) & BLOCK_COUNT_MASK)
		       | (data_len & BLOCK_SIZE_MASK),
		       host->addr + BLOCK);
		FUNC8(DMA_CONTROL_ENABLE, host->addr + DMA_CONTROL);
	} else if (!(host->cmd_flags & REG_DATA)) {
		FUNC8(((1 << 16) & BLOCK_COUNT_MASK)
		       | (data_len & BLOCK_SIZE_MASK),
		       host->addr + BLOCK);
			t_val = FUNC5(host->addr + INT_STATUS_ENABLE);
			t_val |= host->req->data_dir == READ
				 ? INT_STATUS_FIFO_RRDY
				 : INT_STATUS_FIFO_WRDY;

			FUNC8(t_val, host->addr + INT_STATUS_ENABLE);
			FUNC8(t_val, host->addr + INT_SIGNAL_ENABLE);
	} else {
		cmd &= ~(TPC_DATA_SEL | 0xf);
		host->cmd_flags |= REG_DATA;
		cmd |= data_len & 0xf;

		if (host->req->data_dir == WRITE) {
			FUNC1(host);
			FUNC8(host->io_word[0], host->addr + TPC_P0);
			FUNC8(host->io_word[1], host->addr + TPC_P1);
		}
	}

	FUNC3(&host->timer, jiffies + host->timeout_jiffies);
	FUNC8(HOST_CONTROL_LED | FUNC5(host->addr + HOST_CONTROL),
	       host->addr + HOST_CONTROL);
	host->req->error = 0;

	FUNC8(cmd, host->addr + TPC);
	FUNC0(&msh->dev, "executing TPC %08x, len %x\n", cmd, data_len);

	return 0;
}