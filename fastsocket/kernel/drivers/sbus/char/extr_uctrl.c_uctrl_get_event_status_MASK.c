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
typedef  int u8 ;
struct uctrl_txn {int outbits; int* outbuf; int /*<<< orphan*/ * inbuf; scalar_t__ inbits; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int event_status; } ;
struct uctrl_driver {TYPE_1__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_EVENT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct uctrl_driver*,struct uctrl_txn*) ; 

__attribute__((used)) static void FUNC2(struct uctrl_driver *driver)
{
	struct uctrl_txn txn;
	u8 outbits[2];

	txn.opcode = READ_EVENT_STATUS;
	txn.inbits = 0;
	txn.outbits = 2;
	txn.inbuf = NULL;
	txn.outbuf = outbits;

	FUNC1(driver, &txn);

	FUNC0(("bytes %x %x\n", (outbits[0] & 0xff), (outbits[1] & 0xff)));
	driver->status.event_status = 
		((outbits[0] & 0xff) << 8) | (outbits[1] & 0xff);
	FUNC0(("ev is %x\n", driver->status.event_status));
}