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
struct ti_ohci {int* selfid_buf_cpu; scalar_t__ selfid_swap; int /*<<< orphan*/  self_id_errors; } ;
struct hpsb_host {int dummy; } ;
typedef  int quadlet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  OHCI1394_MAX_SELF_ID_ERRORS ; 
 int /*<<< orphan*/  OHCI1394_SelfIDCount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_host*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct ti_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_ohci*,int,int) ; 

__attribute__((used)) static void FUNC7(struct ti_ohci *ohci, struct hpsb_host *host,
				int phyid, int isroot)
{
	quadlet_t *q = ohci->selfid_buf_cpu;
	quadlet_t self_id_count=FUNC5(ohci, OHCI1394_SelfIDCount);
	size_t size;
	quadlet_t q0, q1;

	/* Check status of self-id reception */

	if (ohci->selfid_swap)
		q0 = FUNC4(q[0]);
	else
		q0 = q[0];

	if ((self_id_count & 0x80000000) ||
	    ((self_id_count & 0x00FF0000) != (q0 & 0x00FF0000))) {
		FUNC1(KERN_ERR,
		      "Error in reception of SelfID packets [0x%08x/0x%08x] (count: %d)",
		      self_id_count, q0, ohci->self_id_errors);

		/* Tip by James Goodwin <jamesg@Filanet.com>:
		 * We had an error, generate another bus reset in response.  */
		if (ohci->self_id_errors<OHCI1394_MAX_SELF_ID_ERRORS) {
			FUNC6 (ohci, 1, 0x40);
			ohci->self_id_errors++;
		} else {
			FUNC1(KERN_ERR,
			      "Too many errors on SelfID error reception, giving up!");
		}
		return;
	}

	/* SelfID Ok, reset error counter. */
	ohci->self_id_errors = 0;

	size = ((self_id_count & 0x00001FFC) >> 2) - 1;
	q++;

	while (size > 0) {
		if (ohci->selfid_swap) {
			q0 = FUNC4(q[0]);
			q1 = FUNC4(q[1]);
		} else {
			q0 = q[0];
			q1 = q[1];
		}

		if (q0 == ~q1) {
			FUNC0 ("SelfID packet 0x%x received", q0);
			FUNC3(host, FUNC2(q0));
			if (((q0 & 0x3f000000) >> 24) == phyid)
				FUNC0 ("SelfID for this node is 0x%08x", q0);
		} else {
			FUNC1(KERN_ERR,
			      "SelfID is inconsistent [0x%08x/0x%08x]", q0, q1);
		}
		q += 2;
		size -= 2;
	}

	FUNC0("SelfID complete");

	return;
}