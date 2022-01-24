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
struct soc_camera_platform_priv {int /*<<< orphan*/  subdev; } ;
struct soc_camera_platform_info {int /*<<< orphan*/  dev; } ;
struct soc_camera_device {int /*<<< orphan*/ * ops; } ;
struct TYPE_2__ {struct soc_camera_platform_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct soc_camera_platform_priv* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct soc_camera_platform_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 struct soc_camera_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct soc_camera_platform_priv *priv = FUNC0(pdev);
	struct soc_camera_platform_info *p = pdev->dev.platform_data;
	struct soc_camera_device *icd = FUNC3(p->dev);

	FUNC4(&priv->subdev);
	icd->ops = NULL;
	FUNC2(pdev, NULL);
	FUNC1(priv);
	return 0;
}