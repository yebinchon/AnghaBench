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
struct dvb_demux_feed {int dummy; } ;
struct av7110_p2t {struct dvb_demux_feed* feed; scalar_t__ frags; scalar_t__ pos; scalar_t__ counter; int /*<<< orphan*/  pes; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct av7110_p2t *p, struct dvb_demux_feed *feed)
{
	FUNC0(p->pes, 0, TS_SIZE);
	p->counter = 0;
	p->pos = 0;
	p->frags = 0;
	if (feed)
		p->feed = feed;
}