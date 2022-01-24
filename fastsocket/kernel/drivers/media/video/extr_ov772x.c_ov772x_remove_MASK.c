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
struct soc_camera_device {int /*<<< orphan*/ * ops; } ;
struct ov772x_priv {int dummy; } ;
struct TYPE_2__ {struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ov772x_priv*) ; 
 struct ov772x_priv* FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct ov772x_priv *priv = FUNC1(client);
	struct soc_camera_device *icd = client->dev.platform_data;

	icd->ops = NULL;
	FUNC0(priv);
	return 0;
}