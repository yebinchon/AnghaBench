#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int /*<<< orphan*/  frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct dvb_bt8xx_card* priv; } ;
struct dvb_bt8xx_card {int nfeeds; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_err_ignore; int /*<<< orphan*/  op_sync_orin; int /*<<< orphan*/  gpio_mode; int /*<<< orphan*/  bt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dvb_demux_feed *dvbdmxfeed)
{
	struct dvb_demux*dvbdmx = dvbdmxfeed->demux;
	struct dvb_bt8xx_card *card = dvbdmx->priv;
	int rc;

	FUNC1("dvb_bt8xx: start_feed\n");

	if (!dvbdmx->dmx.frontend)
		return -EINVAL;

	FUNC2(&card->lock);
	card->nfeeds++;
	rc = card->nfeeds;
	if (card->nfeeds == 1)
		FUNC0(card->bt, card->gpio_mode,
			    card->op_sync_orin, card->irq_err_ignore);
	FUNC3(&card->lock);
	return rc;
}