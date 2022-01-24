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
struct packet_task {scalar_t__ outstanding_pkts; int /*<<< orphan*/  hdr; int /*<<< orphan*/  max_payload; int /*<<< orphan*/  skb; struct hpsb_packet* packet; } ;
struct hpsb_packet {scalar_t__ tcode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ TCODE_STREAM_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct packet_task*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_packet*) ; 
 int FUNC4 (struct packet_task*,int) ; 
 int FUNC5 (struct hpsb_packet*) ; 

__attribute__((used)) static void FUNC6(void *__ptask)
{
	struct packet_task *ptask = (struct packet_task *)__ptask;
	struct hpsb_packet *packet = ptask->packet;
	int fail = 0;

	if (packet->tcode != TCODE_STREAM_DATA)
		fail = FUNC5(packet);

	FUNC3(packet);

	ptask->outstanding_pkts--;
	if (ptask->outstanding_pkts > 0 && !fail) {
		int tx_len, err;

		/* Add the encapsulation header to the fragment */
		tx_len = FUNC2(ptask->skb, ptask->max_payload,
					       &ptask->hdr);
		err = FUNC4(ptask, tx_len);
		if (err) {
			if (err == -EAGAIN)
				FUNC0(KERN_ERR, "Out of tlabels\n");

			FUNC1(ptask, 1);
		}
	} else {
		FUNC1(ptask, fail);
	}
}