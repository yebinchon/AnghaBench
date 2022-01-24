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
struct hpsb_packet {int /*<<< orphan*/  type; int /*<<< orphan*/  generation; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpsb_host*) ; 
 struct hpsb_packet* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpsb_async ; 

__attribute__((used)) static struct hpsb_packet *FUNC2(struct hpsb_host *host)
{
	struct hpsb_packet *p;

	p = FUNC1(0);
	if (p) {
		p->host = host;
		p->generation = FUNC0(host);
		p->type = hpsb_async;
	}
	return p;
}