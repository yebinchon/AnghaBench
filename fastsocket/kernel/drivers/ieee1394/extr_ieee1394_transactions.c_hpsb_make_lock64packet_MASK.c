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
typedef  int u32 ;
struct hpsb_packet {int* data; int /*<<< orphan*/  node_id; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;
typedef  int octlet_t ;
typedef  int /*<<< orphan*/  nodeid_t ;

/* Variables and functions */
#define  EXTCODE_FETCH_ADD 129 
#define  EXTCODE_LITTLE_ADD 128 
 int /*<<< orphan*/  FUNC0 (struct hpsb_packet*,int /*<<< orphan*/ ,int,int) ; 
 struct hpsb_packet* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hpsb_packet*) ; 
 scalar_t__ FUNC3 (struct hpsb_packet*) ; 

struct hpsb_packet *FUNC4(struct hpsb_host *host,
					   nodeid_t node, u64 addr, int extcode,
					   octlet_t * data, octlet_t arg)
{
	struct hpsb_packet *p;
	u32 length;

	p = FUNC1(16);
	if (!p)
		return NULL;

	p->host = host;
	p->node_id = node;
	if (FUNC3(p)) {
		FUNC2(p);
		return NULL;
	}

	switch (extcode) {
	case EXTCODE_FETCH_ADD:
	case EXTCODE_LITTLE_ADD:
		length = 8;
		if (data) {
			p->data[0] = *data >> 32;
			p->data[1] = *data & 0xffffffff;
		}
		break;
	default:
		length = 16;
		if (data) {
			p->data[0] = arg >> 32;
			p->data[1] = arg & 0xffffffff;
			p->data[2] = *data >> 32;
			p->data[3] = *data & 0xffffffff;
		}
		break;
	}
	FUNC0(p, addr, extcode, length);

	return p;
}