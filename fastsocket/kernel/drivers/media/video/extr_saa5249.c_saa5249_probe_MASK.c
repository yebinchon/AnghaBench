#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct saa5249_device {int addr; int* is_searching; int /*<<< orphan*/ * vdev; TYPE_2__* vdau; int /*<<< orphan*/  lock; struct v4l2_subdev sd; TYPE_1__* adapter; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int* is_searching; int /*<<< orphan*/ * vdev; TYPE_2__* vdau; int /*<<< orphan*/  lock; struct v4l2_subdev sd; TYPE_1__* adapter; } ;
struct TYPE_4__ {int clrfound; int stopped; scalar_t__ expire; int /*<<< orphan*/  laststat; int /*<<< orphan*/  sregs; int /*<<< orphan*/  pgbuf; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_DAUS ; 
 int /*<<< orphan*/  VFL_TYPE_VTX ; 
 int VTX_VER_MAJ ; 
 int /*<<< orphan*/  VTX_VER_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct saa5249_device*) ; 
 struct saa5249_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  saa5249_ops ; 
 int /*<<< orphan*/  saa_template ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,struct saa5249_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct saa5249_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct saa5249_device*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int pgbuf;
	int err;
	struct saa5249_device *t;
	struct v4l2_subdev *sd;

	FUNC6(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);
	FUNC6(client, "VideoText version %d.%d\n",
			VTX_VER_MAJ, VTX_VER_MIN);
	t = FUNC1(sizeof(*t), GFP_KERNEL);
	if (t == NULL)
		return -ENOMEM;
	sd = &t->sd;
	FUNC5(sd, client, &saa5249_ops);
	FUNC4(&t->lock);

	/* Now create a video4linux device */
	t->vdev = FUNC7();
	if (t->vdev == NULL) {
		FUNC0(t);
		FUNC0(client);
		return -ENOMEM;
	}
	FUNC2(t->vdev, &saa_template, sizeof(*t->vdev));

	for (pgbuf = 0; pgbuf < NUM_DAUS; pgbuf++) {
		FUNC3(t->vdau[pgbuf].pgbuf, ' ', sizeof(t->vdau[0].pgbuf));
		FUNC3(t->vdau[pgbuf].sregs, 0, sizeof(t->vdau[0].sregs));
		FUNC3(t->vdau[pgbuf].laststat, 0, sizeof(t->vdau[0].laststat));
		t->vdau[pgbuf].expire = 0;
		t->vdau[pgbuf].clrfound = true;
		t->vdau[pgbuf].stopped = true;
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