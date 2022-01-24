#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {struct TYPE_9__* adapter; struct cx231xx_i2c* algo_data; struct cx231xx_i2c* data; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct cx231xx_i2c {scalar_t__ i2c_rc; int /*<<< orphan*/  nr; TYPE_3__ i2c_client; TYPE_3__ i2c_adap; TYPE_3__ i2c_algo; struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  name; int /*<<< orphan*/  v4l2_dev; TYPE_2__* udev; int /*<<< orphan*/  cx231xx_send_usb_command; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cx231xx_adap_template ; 
 int /*<<< orphan*/  cx231xx_algo ; 
 int /*<<< orphan*/  cx231xx_client_template ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ i2c_scan ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct cx231xx_i2c *bus)
{
	struct cx231xx *dev = bus->dev;

	FUNC0(!dev->cx231xx_send_usb_command);

	FUNC5(&bus->i2c_adap, &cx231xx_adap_template, sizeof(bus->i2c_adap));
	FUNC5(&bus->i2c_algo, &cx231xx_algo, sizeof(bus->i2c_algo));
	FUNC5(&bus->i2c_client, &cx231xx_client_template,
	       sizeof(bus->i2c_client));

	bus->i2c_adap.dev.parent = &dev->udev->dev;

	FUNC6(bus->i2c_adap.name, bus->dev->name, sizeof(bus->i2c_adap.name));

	bus->i2c_algo.data = bus;
	bus->i2c_adap.algo_data = bus;
	FUNC4(&bus->i2c_adap, &dev->v4l2_dev);
	FUNC3(&bus->i2c_adap);

	bus->i2c_client.adapter = &bus->i2c_adap;

	if (0 == bus->i2c_rc) {
		if (i2c_scan)
			FUNC1(dev, &bus->i2c_client);
	} else
		FUNC2("%s: i2c bus %d register FAILED\n",
			     dev->name, bus->nr);

	return bus->i2c_rc;
}