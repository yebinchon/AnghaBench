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
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {TYPE_1__ dev; int /*<<< orphan*/  name; struct serio* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct taos_data {scalar_t__ state; int /*<<< orphan*/  client; int /*<<< orphan*/  buffer; int /*<<< orphan*/  pos; struct i2c_adapter adapter; } ;
struct serio_driver {int dummy; } ;
struct serio {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TAOS_CMD_ECHO_OFF ; 
 int /*<<< orphan*/  TAOS_CMD_RESET ; 
 scalar_t__ TAOS_STATE_EOFF ; 
 scalar_t__ TAOS_STATE_IDLE ; 
 scalar_t__ TAOS_STATE_INIT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct taos_data*) ; 
 struct taos_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*) ; 
 int FUNC7 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC8 (struct serio*,struct taos_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taos_algorithm ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC14(struct serio *serio, struct serio_driver *drv)
{
	struct taos_data *taos;
	struct i2c_adapter *adapter;
	char *name;
	int err;

	taos = FUNC4(sizeof(struct taos_data), GFP_KERNEL);
	if (!taos) {
		err = -ENOMEM;
		goto exit;
	}
	taos->state = TAOS_STATE_INIT;
	FUNC8(serio, taos);

	err = FUNC7(serio, drv);
	if (err)
		goto exit_kfree;

	adapter = &taos->adapter;
	adapter->owner = THIS_MODULE;
	adapter->algo = &taos_algorithm;
	adapter->algo_data = serio;
	adapter->dev.parent = &serio->dev;

	/* Reset the TAOS evaluation module to identify it */
	FUNC9(serio, TAOS_CMD_RESET);
	FUNC13(wq, taos->state == TAOS_STATE_IDLE,
					 FUNC5(2000));

	if (taos->state != TAOS_STATE_IDLE) {
		err = -ENODEV;
		FUNC0(&serio->dev, "TAOS EVM reset failed (state=%d, "
			"pos=%d)\n", taos->state, taos->pos);
		goto exit_close;
	}

	name = FUNC11(taos->buffer);
	if (!name) {
		err = -ENODEV;
		FUNC1(&serio->dev, "TAOS EVM identification failed\n");
		goto exit_close;
	}
	FUNC10(adapter->name, name, sizeof(adapter->name));

	/* Turn echo off for better performance */
	taos->state = TAOS_STATE_EOFF;
	FUNC9(serio, TAOS_CMD_ECHO_OFF);

	FUNC13(wq, taos->state == TAOS_STATE_IDLE,
					 FUNC5(250));
	if (taos->state != TAOS_STATE_IDLE) {
		err = -ENODEV;
		FUNC1(&adapter->dev, "Echo off failed "
			"(state=%d)\n", taos->state);
		goto exit_close;
	}

	err = FUNC2(adapter);
	if (err)
		goto exit_close;
	FUNC0(&serio->dev, "Connected to TAOS EVM\n");

	taos->client = FUNC12(adapter);
	return 0;

 exit_close:
	FUNC6(serio);
 exit_kfree:
	FUNC8(serio, NULL);
	FUNC3(taos);
 exit:
	return err;
}