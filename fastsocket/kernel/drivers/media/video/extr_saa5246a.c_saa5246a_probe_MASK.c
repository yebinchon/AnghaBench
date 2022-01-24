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
struct v4l2_subdev {int dummy; } ;
struct saa5246a_device {int* is_searching; int /*<<< orphan*/ * vdev; int /*<<< orphan*/ * pgbuf; int /*<<< orphan*/  lock; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAJOR_VERSION ; 
 int /*<<< orphan*/  MINOR_VERSION ; 
 int NUM_DAUS ; 
 int /*<<< orphan*/  VFL_TYPE_VTX ; 
 int /*<<< orphan*/  FUNC0 (struct saa5246a_device*) ; 
 struct saa5246a_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  saa5246a_ops ; 
 int /*<<< orphan*/  saa_template ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct saa5246a_device*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int pgbuf;
	int err;
	struct saa5246a_device *t;
	struct v4l2_subdev *sd;

	FUNC6(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);
	FUNC6(client, "VideoText version %d.%d\n",
			MAJOR_VERSION, MINOR_VERSION);
	t = FUNC1(sizeof(*t), GFP_KERNEL);
	if (t == NULL)
		return -ENOMEM;
	sd = &t->sd;
	FUNC5(sd, client, &saa5246a_ops);
	FUNC4(&t->lock);

	/* Now create a video4linux device */
	t->vdev = FUNC7();
	if (t->vdev == NULL) {
		FUNC0(t);
		return -ENOMEM;
	}
	FUNC2(t->vdev, &saa_template, sizeof(*t->vdev));

	for (pgbuf = 0; pgbuf < NUM_DAUS; pgbuf++) {
		FUNC3(t->pgbuf[pgbuf], ' ', sizeof(t->pgbuf[0]));
		t->is_searching[pgbuf] = false;
	}
	FUNC10(t->vdev, t);

	/* Register it */
	err = FUNC9(t->vdev, VFL_TYPE_VTX, -1);
	if (err < 0) {
		FUNC8(t->vdev);
		FUNC0(t);
		return err;
	}
	return 0;
}