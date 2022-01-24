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
struct tmdc_port {unsigned char mode; scalar_t__* abs; unsigned char absc; int* btnc; struct input_dev* dev; int /*<<< orphan*/ * btn; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/ * btno; } ;
struct tmdc_model {unsigned char id; scalar_t__* axes; unsigned char abs; int* btnc; char* name; int hats; int /*<<< orphan*/ * btno; int /*<<< orphan*/ * buttons; } ;
struct tmdc {TYPE_3__* gameport; struct tmdc_port** port; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {unsigned char product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {char* phys; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_GAMEPORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GAMEPORT_ID_VENDOR_THRUSTMASTER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TMDC_ABS ; 
 int TMDC_ABS_HAT ; 
 int TMDC_BTN ; 
 size_t TMDC_BYTE_DEF ; 
 size_t TMDC_BYTE_ID ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,struct tmdc*) ; 
 int /*<<< orphan*/  FUNC6 (struct tmdc_port*) ; 
 struct tmdc_port* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__* tmdc_abs_hat ; 
 int /*<<< orphan*/  tmdc_close ; 
 struct tmdc_model* tmdc_models ; 
 int /*<<< orphan*/  tmdc_open ; 

__attribute__((used)) static int FUNC10(struct tmdc *tmdc, int idx, unsigned char *data)
{
	const struct tmdc_model *model;
	struct tmdc_port *port;
	struct input_dev *input_dev;
	int i, j, b = 0;
	int err;

	tmdc->port[idx] = port = FUNC7(sizeof (struct tmdc_port), GFP_KERNEL);
	input_dev = FUNC1();
	if (!port || !input_dev) {
		err = -ENOMEM;
		goto fail;
	}

	port->mode = data[TMDC_BYTE_ID];

	for (model = tmdc_models; model->id && model->id != port->mode; model++)
		/* empty */;

	port->abs = model->axes;
	port->btn = model->buttons;

	if (!model->id) {
		port->absc = data[TMDC_BYTE_DEF] >> 4;
		for (i = 0; i < 4; i++)
			port->btnc[i] = i < (data[TMDC_BYTE_DEF] & 0xf) ? 8 : 0;
	} else {
		port->absc = model->abs;
		for (i = 0; i < 4; i++)
			port->btnc[i] = model->btnc[i];
	}

	for (i = 0; i < 4; i++)
		port->btno[i] = model->btno[i];

	FUNC9(port->name, sizeof(port->name), model->name,
		 port->absc, (data[TMDC_BYTE_DEF] & 0xf) << 3, port->mode);
	FUNC9(port->phys, sizeof(port->phys), "%s/input%d", tmdc->gameport->phys, i);

	port->dev = input_dev;

	input_dev->name = port->name;
	input_dev->phys = port->phys;
	input_dev->id.bustype = BUS_GAMEPORT;
	input_dev->id.vendor = GAMEPORT_ID_VENDOR_THRUSTMASTER;
	input_dev->id.product = model->id;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &tmdc->gameport->dev;

	FUNC5(input_dev, tmdc);

	input_dev->open = tmdc_open;
	input_dev->close = tmdc_close;

	input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);

	for (i = 0; i < port->absc && i < TMDC_ABS; i++)
		if (port->abs[i] >= 0)
			FUNC4(input_dev, port->abs[i], 8, 248, 2, 4);

	for (i = 0; i < model->hats && i < TMDC_ABS_HAT; i++)
		FUNC4(input_dev, tmdc_abs_hat[i], -1, 1, 0, 0);

	for (i = 0; i < 4; i++) {
		for (j = 0; j < port->btnc[i] && j < TMDC_BTN; j++)
			FUNC8(port->btn[j + b], input_dev->keybit);
		b += port->btnc[i];
	}

	err = FUNC3(port->dev);
	if (err)
		goto fail;

	return 0;

 fail:	FUNC2(input_dev);
	FUNC6(port);
	return err;
}