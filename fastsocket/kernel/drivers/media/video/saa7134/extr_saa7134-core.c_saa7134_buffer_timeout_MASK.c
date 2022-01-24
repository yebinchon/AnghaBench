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
struct saa7134_dmaqueue {scalar_t__ curr; struct saa7134_dev* dev; } ;
struct saa7134_dev {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7134_REGION_ENABLE ; 
 int /*<<< orphan*/  VIDEOBUF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,struct saa7134_dmaqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,struct saa7134_dmaqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(unsigned long data)
{
	struct saa7134_dmaqueue *q = (struct saa7134_dmaqueue*)data;
	struct saa7134_dev *dev = q->dev;
	unsigned long flags;

	FUNC4(&dev->slock,flags);

	/* try to reset the hardware (SWRST) */
	FUNC3(SAA7134_REGION_ENABLE, 0x00);
	FUNC3(SAA7134_REGION_ENABLE, 0x80);
	FUNC3(SAA7134_REGION_ENABLE, 0x00);

	/* flag current buffer as failed,
	   try to start over with the next one. */
	if (q->curr) {
		FUNC0("timeout on %p\n",q->curr);
		FUNC1(dev,q,VIDEOBUF_ERROR);
	}
	FUNC2(dev,q);
	FUNC5(&dev->slock,flags);
}