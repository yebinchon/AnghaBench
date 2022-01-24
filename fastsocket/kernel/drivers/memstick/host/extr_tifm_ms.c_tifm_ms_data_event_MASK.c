#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tifm_ms {int /*<<< orphan*/  cmd_flags; scalar_t__ use_dma; scalar_t__ req; } ;
struct tifm_dev {int /*<<< orphan*/  lock; scalar_t__ addr; int /*<<< orphan*/  dev; } ;
struct memstick_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_READY ; 
 scalar_t__ SOCK_DMA_FIFO_STATUS ; 
 scalar_t__ SOCK_MS_STATUS ; 
 unsigned int TIFM_FIFO_MORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 struct tifm_ms* FUNC1 (struct memstick_host*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tifm_dev*) ; 
 int FUNC6 (struct tifm_ms*) ; 
 int /*<<< orphan*/  FUNC7 (struct tifm_ms*) ; 
 int /*<<< orphan*/  FUNC8 (struct tifm_ms*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct tifm_dev *sock)
{
	struct tifm_ms *host;
	unsigned int fifo_status = 0, host_status = 0;
	int rc = 1;

	FUNC3(&sock->lock);
	host = FUNC1((struct memstick_host *)FUNC5(sock));
	fifo_status = FUNC2(sock->addr + SOCK_DMA_FIFO_STATUS);
	host_status = FUNC2(sock->addr + SOCK_MS_STATUS);
	FUNC0(&sock->dev,
		"data event: fifo_status %x, host_status %x, flags %x\n",
		fifo_status, host_status, host->cmd_flags);

	if (host->req) {
		if (host->use_dma && (fifo_status & 1)) {
			host->cmd_flags |= FIFO_READY;
			rc = FUNC6(host);
		}
		if (!host->use_dma && (fifo_status & TIFM_FIFO_MORE)) {
			if (!FUNC8(host)) {
				host->cmd_flags |= FIFO_READY;
				rc = FUNC6(host);
			}
		}
	}

	FUNC9(fifo_status, sock->addr + SOCK_DMA_FIFO_STATUS);
	if (!rc)
		FUNC7(host);

	FUNC4(&sock->lock);
}