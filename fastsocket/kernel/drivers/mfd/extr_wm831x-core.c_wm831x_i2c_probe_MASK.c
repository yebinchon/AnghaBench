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
struct wm831x {int /*<<< orphan*/  write_dev; int /*<<< orphan*/  read_dev; struct i2c_client* control_data; int /*<<< orphan*/ * dev; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,struct wm831x*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct wm831x* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm831x_i2c_read_device ; 
 int /*<<< orphan*/  wm831x_i2c_write_device ; 

__attribute__((used)) static int FUNC4(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm831x *wm831x;

	wm831x = FUNC2(sizeof(struct wm831x), GFP_KERNEL);
	if (wm831x == NULL) {
		FUNC1(i2c);
		return -ENOMEM;
	}

	FUNC0(i2c, wm831x);
	wm831x->dev = &i2c->dev;
	wm831x->control_data = i2c;
	wm831x->read_dev = wm831x_i2c_read_device;
	wm831x->write_dev = wm831x_i2c_write_device;

	return FUNC3(wm831x, id->driver_data, i2c->irq);
}