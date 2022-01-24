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
struct TYPE_2__ {int external_status; } ;
struct uctrl_driver {TYPE_1__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_EXTERNAL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct uctrl_driver*,struct uctrl_txn*) ; 
 int /*<<< orphan*/ * uctrl_extstatus ; 

__attribute__((used)) static void FUNC2(struct uctrl_driver *driver)
{
	struct uctrl_txn txn;
	u8 outbits[2];
	int i, v;

	txn.opcode = READ_EXTERNAL_STATUS;
	txn.inbits = 0;
	txn.outbits = 2;
	txn.inbuf = NULL;
	txn.outbuf = outbits;

	FUNC1(driver, &txn);

	FUNC0(("bytes %x %x\n", (outbits[0] & 0xff), (outbits[1] & 0xff)));
	driver->status.external_status = 
		((outbits[0] * 256) + (outbits[1]));
	FUNC0(("ex is %x\n", driver->status.external_status));
	v = driver->status.external_status;
	for (i = 0; v != 0; i++, v >>= 1) {
		if (v & 1) {
			FUNC0(("%s%s", " ", uctrl_extstatus[i]));
		}
	}
	FUNC0(("\n"));
	
}