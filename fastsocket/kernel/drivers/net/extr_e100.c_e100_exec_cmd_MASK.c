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
typedef  scalar_t__ u8 ;
struct nic {int /*<<< orphan*/  cmd_lock; TYPE_2__* csr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  cmd_lo; int /*<<< orphan*/  gen_ptr; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;

/* Variables and functions */
 unsigned int E100_WAIT_SCB_FAST ; 
 unsigned int E100_WAIT_SCB_TIMEOUT ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ cuc_resume ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct nic *nic, u8 cmd, dma_addr_t dma_addr)
{
	unsigned long flags;
	unsigned int i;
	int err = 0;

	FUNC5(&nic->cmd_lock, flags);

	/* Previous command is accepted when SCB clears */
	for (i = 0; i < E100_WAIT_SCB_TIMEOUT; i++) {
		if (FUNC4(!FUNC1(&nic->csr->scb.cmd_lo)))
			break;
		FUNC0();
		if (FUNC8(i > E100_WAIT_SCB_FAST))
			FUNC7(5);
	}
	if (FUNC8(i == E100_WAIT_SCB_TIMEOUT)) {
		err = -EAGAIN;
		goto err_unlock;
	}

	if (FUNC8(cmd != cuc_resume))
		FUNC2(dma_addr, &nic->csr->scb.gen_ptr);
	FUNC3(cmd, &nic->csr->scb.cmd_lo);

err_unlock:
	FUNC6(&nic->cmd_lock, flags);

	return err;
}