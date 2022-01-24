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
struct si4713_device {int /*<<< orphan*/  sd; int /*<<< orphan*/  work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  platform_data; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  platform_data; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  name; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_DISABLED ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct si4713_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct si4713_device*) ; 
 struct si4713_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct si4713_device*) ; 
 int /*<<< orphan*/  si4713_handler ; 
 int FUNC7 (struct si4713_device*) ; 
 int /*<<< orphan*/  si4713_subdev_ops ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
					const struct i2c_device_id *id)
{
	struct si4713_device *sdev;
	int rval;

	sdev = FUNC4(sizeof *sdev, GFP_KERNEL);
	if (!sdev) {
		FUNC0(&client->dev, "Failed to alloc video device.\n");
		rval = -ENOMEM;
		goto exit;
	}

	sdev->platform_data = client->dev.platform_data;
	if (!sdev->platform_data) {
		FUNC9(&sdev->sd, "No platform data registered.\n");
		rval = -ENODEV;
		goto free_sdev;
	}

	FUNC10(&sdev->sd, client, &si4713_subdev_ops);

	FUNC5(&sdev->mutex);
	FUNC2(&sdev->work);

	if (client->irq) {
		rval = FUNC6(client->irq,
			si4713_handler, IRQF_TRIGGER_FALLING | IRQF_DISABLED,
			client->name, sdev);
		if (rval < 0) {
			FUNC9(&sdev->sd, "Could not request IRQ\n");
			goto free_sdev;
		}
		FUNC8(1, debug, &sdev->sd, "IRQ requested.\n");
	} else {
		FUNC11(&sdev->sd, "IRQ not configured. Using timeouts.\n");
	}

	rval = FUNC7(sdev);
	if (rval < 0) {
		FUNC9(&sdev->sd, "Failed to probe device information.\n");
		goto free_irq;
	}

	return 0;

free_irq:
	if (client->irq)
		FUNC1(client->irq, sdev);
free_sdev:
	FUNC3(sdev);
exit:
	return rval;
}