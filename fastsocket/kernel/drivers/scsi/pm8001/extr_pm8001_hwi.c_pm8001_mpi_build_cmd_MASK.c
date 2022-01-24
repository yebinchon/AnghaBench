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
typedef  int u32 ;
struct pm8001_hba_info {scalar_t__ iomb_size; } ;
struct mpi_msg_hdr {int dummy; } ;
struct inbound_queue_table {int /*<<< orphan*/  consumer_index; int /*<<< orphan*/  producer_idx; int /*<<< orphan*/  pi_offset; int /*<<< orphan*/  pi_pci_bar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inbound_queue_table*,scalar_t__,void**) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct pm8001_hba_info *pm8001_ha,
			 struct inbound_queue_table *circularQ,
			 u32 opCode, void *payload, u32 responseQueue)
{
	u32 Header = 0, hpriority = 0, bc = 1, category = 0x02;
	void *pMessage;

	if (FUNC5(circularQ, pm8001_ha->iomb_size,
		&pMessage) < 0) {
		FUNC1(pm8001_ha,
			FUNC6("No free mpi buffer\n"));
		return -1;
	}
	FUNC0(!payload);
	/*Copy to the payload*/
	FUNC3(pMessage, payload, (pm8001_ha->iomb_size -
				sizeof(struct mpi_msg_hdr)));

	/*Build the header*/
	Header = ((1 << 31) | (hpriority << 30) | ((bc & 0x1f) << 24)
		| ((responseQueue & 0x3F) << 16)
		| ((category & 0xF) << 12) | (opCode & 0xFFF));

	FUNC7((pMessage - 4), 0, FUNC2(Header));
	/*Update the PI to the firmware*/
	FUNC4(pm8001_ha, circularQ->pi_pci_bar,
		circularQ->pi_offset, circularQ->producer_idx);
	FUNC1(pm8001_ha,
		FUNC6("INB Q %x OPCODE:%x , UPDATED PI=%d CI=%d\n",
			responseQueue, opCode, circularQ->producer_idx,
			circularQ->consumer_index));
	return 0;
}