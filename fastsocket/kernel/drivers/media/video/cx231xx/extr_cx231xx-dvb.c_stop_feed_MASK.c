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
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct cx231xx_dvb* priv; } ;
struct cx231xx_dvb {scalar_t__ nfeeds; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cx231xx_dvb*) ; 

__attribute__((used)) static int FUNC3(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux = feed->demux;
	struct cx231xx_dvb *dvb = demux->priv;
	int err = 0;

	FUNC0(&dvb->lock);
	dvb->nfeeds--;

	if (0 == dvb->nfeeds)
		err = FUNC2(dvb);

	FUNC1(&dvb->lock);
	return err;
}