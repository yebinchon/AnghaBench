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
struct tifm_sd {int /*<<< orphan*/  cmd_flags; TYPE_2__* req; } ;
struct tifm_dev {int /*<<< orphan*/  lock; scalar_t__ addr; int /*<<< orphan*/  dev; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {struct mmc_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_READY ; 
 scalar_t__ SOCK_DMA_FIFO_STATUS ; 
 unsigned int TIFM_FIFO_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int /*<<< orphan*/ ) ; 
 struct tifm_sd* FUNC1 (struct mmc_host*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tifm_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct tifm_sd*) ; 
 scalar_t__ FUNC7 (struct tifm_sd*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct tifm_dev *sock)
{
	struct tifm_sd *host;
	unsigned int fifo_status = 0;
	struct mmc_data *r_data = NULL;

	FUNC3(&sock->lock);
	host = FUNC1((struct mmc_host*)FUNC5(sock));
	fifo_status = FUNC2(sock->addr + SOCK_DMA_FIFO_STATUS);
	FUNC0(&sock->dev, "data event: fifo_status %x, flags %x\n",
		fifo_status, host->cmd_flags);

	if (host->req) {
		r_data = host->req->cmd->data;

		if (r_data && (fifo_status & TIFM_FIFO_READY)) {
			if (FUNC7(host, r_data)) {
				host->cmd_flags |= FIFO_READY;
				FUNC6(host);
			}
		}
	}

	FUNC8(fifo_status, sock->addr + SOCK_DMA_FIFO_STATUS);
	FUNC4(&sock->lock);
}