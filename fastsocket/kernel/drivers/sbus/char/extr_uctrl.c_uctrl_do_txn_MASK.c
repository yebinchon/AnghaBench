#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct uctrl_txn {int inbits; int outbits; int opcode; int* inbuf; int* outbuf; } ;
struct uctrl_driver {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  uctrl_stat; int /*<<< orphan*/  uctrl_intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct uctrl_driver *driver, struct uctrl_txn *txn)
{
	int stat, incnt, outcnt, bytecnt, intr;
	u32 byte;

	stat = FUNC3(&driver->regs->uctrl_stat);
	intr = FUNC3(&driver->regs->uctrl_intr);
	FUNC4(stat, &driver->regs->uctrl_stat);

	FUNC2(("interrupt stat 0x%x int 0x%x\n", stat, intr));

	incnt = txn->inbits;
	outcnt = txn->outbits;
	byte = (txn->opcode << 8);
	FUNC1(byte);

	bytecnt = 0;
	while (incnt > 0) {
		byte = (txn->inbuf[bytecnt] << 8);
		FUNC1(byte);
		incnt--;
		bytecnt++;
	}

	/* Get the ack */
	FUNC0(byte);
	FUNC2(("ack was %x\n", (byte >> 8)));

	bytecnt = 0;
	while (outcnt > 0) {
		FUNC0(byte);
		txn->outbuf[bytecnt] = (byte >> 8);
		FUNC2(("set byte to %02x\n", byte));
		outcnt--;
		bytecnt++;
	}
}