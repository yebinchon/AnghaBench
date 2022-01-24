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
struct saa7146_dmaqueue {scalar_t__ curr; struct saa7146_dev* dev; } ;
struct saa7146_dev {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  VIDEOBUF_ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,struct saa7146_dmaqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(unsigned long data)
{
	struct saa7146_dmaqueue *q = (struct saa7146_dmaqueue*)data;
	struct saa7146_dev *dev = q->dev;
	unsigned long flags;

	FUNC1(("dev:%p, dmaq:%p\n", dev, q));

	FUNC3(&dev->slock,flags);
	if (q->curr) {
		FUNC0(("timeout on %p\n", q->curr));
		FUNC2(dev,q,VIDEOBUF_ERROR);
	}

	/* we don't restart the transfer here like other drivers do. when
	   a streaming capture is disabled, the timeout function will be
	   called for the current buffer. if we activate the next buffer now,
	   we mess up our capture logic. if a timeout occurs on another buffer,
	   then something is seriously broken before, so no need to buffer the
	   next capture IMHO... */
/*
	saa7146_buffer_next(dev,q);
*/
	FUNC4(&dev->slock,flags);
}