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
struct hpsb_packet {scalar_t__* data; int /*<<< orphan*/  node_id; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;
typedef  int /*<<< orphan*/  quadlet_t ;
typedef  int /*<<< orphan*/  nodeid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpsb_packet*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hpsb_packet* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_packet*) ; 
 scalar_t__ FUNC4 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,size_t) ; 

struct hpsb_packet *FUNC6(struct hpsb_host *host, nodeid_t node,
					  u64 addr, quadlet_t * buffer,
					  size_t length)
{
	struct hpsb_packet *packet;

	if (length == 0)
		return NULL;

	packet = FUNC2(length);
	if (!packet)
		return NULL;

	if (length % 4) {	/* zero padding bytes */
		packet->data[length >> 2] = 0;
	}
	packet->host = host;
	packet->node_id = node;

	if (FUNC4(packet)) {
		FUNC3(packet);
		return NULL;
	}

	if (length == 4) {
		FUNC1(packet, addr, buffer ? *buffer : 0);
	} else {
		FUNC0(packet, addr, length);
		if (buffer)
			FUNC5(packet->data, buffer, length);
	}

	return packet;
}