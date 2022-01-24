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
struct TYPE_3__ {int /*<<< orphan*/  pkt_free_list; } ;
struct TYPE_4__ {int size; } ;
struct pktcdvd_device {TYPE_1__ cdrw; TYPE_2__ settings; } ;
struct packet_data {int id; int /*<<< orphan*/  list; struct pktcdvd_device* pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct packet_data* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct pktcdvd_device*) ; 

__attribute__((used)) static int FUNC5(struct pktcdvd_device *pd, int nr_packets)
{
	struct packet_data *pkt;

	FUNC0(!FUNC2(&pd->cdrw.pkt_free_list));

	while (nr_packets > 0) {
		pkt = FUNC3(pd->settings.size >> 2);
		if (!pkt) {
			FUNC4(pd);
			return 0;
		}
		pkt->id = nr_packets;
		pkt->pd = pd;
		FUNC1(&pkt->list, &pd->cdrw.pkt_free_list);
		nr_packets--;
	}
	return 1;
}