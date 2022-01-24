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
struct hpsb_packet {int node_id; int tlabel; int no_waiter; scalar_t__* data; int /*<<< orphan*/  generation; struct hpsb_host* host; int /*<<< orphan*/  state; int /*<<< orphan*/  type; } ;
struct hpsb_host {int dummy; } ;
typedef  int quadlet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_host*) ; 
 struct hpsb_packet* FUNC2 (size_t) ; 
 int /*<<< orphan*/  hpsb_async ; 
 int /*<<< orphan*/  hpsb_unused ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hpsb_packet *FUNC4(struct hpsb_host *host,
					       quadlet_t *data, size_t dsize)
{
	struct hpsb_packet *p;

	p = FUNC2(dsize);
	if (FUNC3(p == NULL)) {
		/* FIXME - send data_error response */
		FUNC0("out of memory, cannot send response packet");
		return NULL;
	}

	p->type = hpsb_async;
	p->state = hpsb_unused;
	p->host = host;
	p->node_id = data[1] >> 16;
	p->tlabel = (data[0] >> 10) & 0x3f;
	p->no_waiter = 1;

	p->generation = FUNC1(host);

	if (dsize % 4)
		p->data[dsize / 4] = 0;

	return p;
}