#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct grip_port {size_t mode; int registered; scalar_t__ dirty; struct input_dev* dev; } ;
struct grip_mp {TYPE_3__* gameport; struct grip_port** port; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_GAMEPORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GAMEPORT_ID_VENDOR_GRAVIS ; 
 int** grip_abs ; 
 int** grip_btn ; 
 int /*<<< orphan*/  grip_close ; 
 int /*<<< orphan*/ * grip_name ; 
 int /*<<< orphan*/  grip_open ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,struct grip_mp*) ; 
 int /*<<< orphan*/  FUNC6 (struct grip_mp*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int slot, struct grip_mp *grip)
{
	struct grip_port *port = grip->port[slot];
	struct input_dev *input_dev;
	int j, t;
	int err;

	port->dev = input_dev = FUNC1();
	if (!input_dev)
		return -ENOMEM;

	input_dev->name = grip_name[port->mode];
	input_dev->id.bustype = BUS_GAMEPORT;
	input_dev->id.vendor = GAMEPORT_ID_VENDOR_GRAVIS;
	input_dev->id.product = 0x0100 + port->mode;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &grip->gameport->dev;

	FUNC5(input_dev, grip);

	input_dev->open = grip_open;
	input_dev->close = grip_close;

	input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);

	for (j = 0; (t = grip_abs[port->mode][j]) >= 0; j++)
		FUNC4(input_dev, t, -1, 1, 0, 0);

	for (j = 0; (t = grip_btn[port->mode][j]) >= 0; j++)
		if (t > 0)
			FUNC7(t, input_dev->keybit);

	err = FUNC3(port->dev);
	if (err) {
		FUNC2(port->dev);
		return err;
	}

	port->registered = 1;

	if (port->dirty)	            /* report initial state, if any */
		FUNC6(grip, slot);

	return 0;
}