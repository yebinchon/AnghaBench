#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* adapter; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_11__ {struct saa7134_dev* algo_data; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct saa7134_dev {TYPE_3__ i2c_client; int /*<<< orphan*/  name; int /*<<< orphan*/  eedata; TYPE_4__ i2c_adap; int /*<<< orphan*/  v4l2_dev; TYPE_2__* pci; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ i2c_scan ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__ saa7134_adap_template ; 
 TYPE_3__ saa7134_client_template ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct saa7134_dev *dev)
{
	dev->i2c_adap = saa7134_adap_template;
	dev->i2c_adap.dev.parent = &dev->pci->dev;
	FUNC5(dev->i2c_adap.name,dev->name);
	dev->i2c_adap.algo_data = dev;
	FUNC2(&dev->i2c_adap, &dev->v4l2_dev);
	FUNC1(&dev->i2c_adap);

	dev->i2c_client = saa7134_client_template;
	dev->i2c_client.adapter = &dev->i2c_adap;

	FUNC3(dev,dev->eedata,sizeof(dev->eedata));
	if (i2c_scan)
		FUNC0(dev->name,&dev->i2c_client);

	/* Instantiate the IR receiver device, if present */
	FUNC4(dev);
	return 0;
}