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
typedef  int /*<<< orphan*/  u64 ;
struct node_entry {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  host; } ;
struct hpsb_packet {int dummy; } ;
typedef  int /*<<< orphan*/  quadlet_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 struct hpsb_packet* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct node_entry*,struct hpsb_packet*) ; 
 scalar_t__ FUNC2 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_packet*,int /*<<< orphan*/  (*) (struct hpsb_packet*),struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_packet*) ; 

__attribute__((used)) static int FUNC5(struct node_entry *ne, u64 addr,
				       quadlet_t *buf, size_t len)
{
	struct hpsb_packet *packet;

	packet = FUNC0(ne->host, ne->nodeid, addr, buf, len);
	if (!packet)
		return -ENOMEM;

	FUNC3(packet, sbp2_free_packet, packet);
	FUNC1(ne, packet);
	if (FUNC2(packet) < 0) {
		FUNC4(packet);
		return -EIO;
	}
	return 0;
}