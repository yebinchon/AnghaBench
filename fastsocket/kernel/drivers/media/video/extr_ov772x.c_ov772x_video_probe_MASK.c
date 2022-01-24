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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {scalar_t__ iface; TYPE_1__ dev; } ;
struct ov772x_priv {int /*<<< orphan*/  model; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ nr; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MIDH ; 
 int /*<<< orphan*/  MIDL ; 
#define  OV7720 129 
#define  OV7725 128 
 int /*<<< orphan*/  PID ; 
 int /*<<< orphan*/  V4L2_IDENT_OV7720 ; 
 int /*<<< orphan*/  V4L2_IDENT_OV7725 ; 
 int /*<<< orphan*/  VER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct ov772x_priv* FUNC4 (struct i2c_client*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct soc_camera_device *icd,
			      struct i2c_client *client)
{
	struct ov772x_priv *priv = FUNC4(client);
	u8                  pid, ver;
	const char         *devname;

	/*
	 * We must have a parent by now. And it cannot be a wrong one.
	 * So this entire test is completely redundant.
	 */
	if (!icd->dev.parent ||
	    FUNC5(icd->dev.parent)->nr != icd->iface)
		return -ENODEV;

	/*
	 * check and show product ID and manufacturer ID
	 */
	pid = FUNC3(client, PID);
	ver = FUNC3(client, VER);

	switch (FUNC0(pid, ver)) {
	case OV7720:
		devname     = "ov7720";
		priv->model = V4L2_IDENT_OV7720;
		break;
	case OV7725:
		devname     = "ov7725";
		priv->model = V4L2_IDENT_OV7725;
		break;
	default:
		FUNC1(&client->dev,
			"Product ID error %x:%x\n", pid, ver);
		return -ENODEV;
	}

	FUNC2(&client->dev,
		 "%s Product ID %0x:%0x Manufacturer ID %x:%x\n",
		 devname,
		 pid,
		 ver,
		 FUNC3(client, MIDH),
		 FUNC3(client, MIDL));

	return 0;
}