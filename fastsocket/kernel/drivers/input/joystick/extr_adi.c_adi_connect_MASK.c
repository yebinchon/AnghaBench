#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gameport_driver {int dummy; } ;
struct gameport {int dummy; } ;
struct adi_port {TYPE_1__* adi; struct gameport* gameport; } ;
struct TYPE_5__ {scalar_t__ ret; scalar_t__ length; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADI_DATA_DELAY ; 
 int /*<<< orphan*/  ADI_INIT_DELAY ; 
 scalar_t__ ADI_MIN_LEN_LENGTH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GAMEPORT_MODE_RAW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct adi_port*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*) ; 
 int FUNC4 (TYPE_1__*,struct adi_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adi_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adi_poll ; 
 scalar_t__ FUNC6 (struct adi_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct adi_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct gameport*) ; 
 int FUNC9 (struct gameport*,struct gameport_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gameport*,struct adi_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gameport*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct adi_port*) ; 
 struct adi_port* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct gameport *gameport, struct gameport_driver *drv)
{
	struct adi_port *port;
	int i;
	int err;

	port = FUNC17(sizeof(struct adi_port), GFP_KERNEL);
	if (!port)
		return -ENOMEM;

	port->gameport = gameport;

	FUNC10(gameport, port);

	err = FUNC9(gameport, drv, GAMEPORT_MODE_RAW);
	if (err)
		goto fail1;

	FUNC3(gameport);
	FUNC7(port);

	if (port->adi[0].ret >= ADI_MIN_LEN_LENGTH)
		FUNC5(port, FUNC0(port->adi, 10));

	for (i = 0; i < 2; i++) {
		FUNC1(port->adi + i, port);

		if (!port->adi[i].length)
			continue;

		err = FUNC4(port->adi + i, port, i);
		if (err)
			goto fail2;
	}

	if (!port->adi[0].length && !port->adi[1].length) {
		err = -ENODEV;
		goto fail2;
	}

	FUNC11(gameport, adi_poll);
	FUNC12(gameport, 20);

	FUNC18(ADI_INIT_DELAY);
	if (FUNC6(port)) {
		FUNC18(ADI_DATA_DELAY);
		FUNC6(port);
	}

	for (i = 0; i < 2; i++)
		if (port->adi[i].length > 0) {
			FUNC2(port->adi + i);
			err = FUNC14(port->adi[i].dev);
			if (err)
				goto fail3;
		}

	return 0;

 fail3: while (--i >= 0) {
		if (port->adi[i].length > 0) {
			FUNC15(port->adi[i].dev);
			port->adi[i].dev = NULL;
		}
	}
 fail2:	for (i = 0; i < 2; i++)
		if (port->adi[i].dev)
			FUNC13(port->adi[i].dev);
	FUNC8(gameport);
 fail1:	FUNC10(gameport, NULL);
	FUNC16(port);
	return err;
}