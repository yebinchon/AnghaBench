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
typedef  int u8 ;
struct cx231xx {int /*<<< orphan*/  gpio_i2c_lock; } ;

/* Variables and functions */
 int FUNC0 (struct cx231xx*) ; 
 int FUNC1 (struct cx231xx*) ; 
 int FUNC2 (struct cx231xx*,int*) ; 
 int FUNC3 (struct cx231xx*) ; 
 int FUNC4 (struct cx231xx*) ; 
 int FUNC5 (struct cx231xx*,int) ; 
 int FUNC6 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct cx231xx *dev, u8 dev_addr, u8 *buf, u8 len)
{
	int status = 0;
	int i = 0;

	/* get the lock */
	FUNC7(&dev->gpio_i2c_lock);

	/* start */
	status = FUNC3(dev);

	/* write dev_addr */
	status = FUNC5(dev, (dev_addr << 1) + 1);

	/* readAck */
	status = FUNC1(dev);

	/* read data */
	for (i = 0; i < len; i++) {
		/* read data */
		buf[i] = 0;
		status = FUNC2(dev, &buf[i]);

		if ((i + 1) != len) {
			/* only do write ack if we more length */
			status = FUNC4(dev);
		}
	}

	/* write NAK - inform reads are complete */
	status = FUNC6(dev);

	/* write end */
	status = FUNC0(dev);

	/* release the lock */
	FUNC8(&dev->gpio_i2c_lock);

	return status;
}