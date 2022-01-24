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
struct hpsb_packet {int no_waiter; int /*<<< orphan*/  generation; } ;
struct hpsb_host {int /*<<< orphan*/  id; int /*<<< orphan*/  node_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EXTPHYPACKET_TYPE_RESUME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PHYPACKET_PORT_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct hpsb_host*) ; 
 struct hpsb_packet* FUNC3 (struct hpsb_host*,int) ; 
 int FUNC4 (struct hpsb_packet*) ; 

__attribute__((used)) static int FUNC5(struct hpsb_host *host)
{
	struct hpsb_packet *packet;
	int error = -ENOMEM;

	packet = FUNC3(host,
			EXTPHYPACKET_TYPE_RESUME |
			FUNC1(host->node_id) << PHYPACKET_PORT_SHIFT);
	if (packet) {
		packet->no_waiter = 1;
		packet->generation = FUNC2(host);
		error = FUNC4(packet);
	}
	if (error)
		FUNC0("fw-host%d: Failed to broadcast resume packet",
			  host->id);
	return error;
}