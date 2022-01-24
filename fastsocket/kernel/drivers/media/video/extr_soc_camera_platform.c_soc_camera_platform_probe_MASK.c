#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct soc_camera_platform_priv {TYPE_1__ subdev; } ;
struct soc_camera_platform_info {int /*<<< orphan*/  dev; } ;
struct soc_camera_host {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int /*<<< orphan*/ * ops; TYPE_5__ dev; } ;
struct TYPE_11__ {struct soc_camera_platform_info* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_camera_platform_priv*) ; 
 struct soc_camera_platform_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  platform_subdev_ops ; 
 int /*<<< orphan*/  soc_camera_platform_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct soc_camera_device* FUNC7 (int /*<<< orphan*/ ) ; 
 struct soc_camera_host* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct soc_camera_platform_info*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct soc_camera_host *ici;
	struct soc_camera_platform_priv *priv;
	struct soc_camera_platform_info *p = pdev->dev.platform_data;
	struct soc_camera_device *icd;
	int ret;

	if (!p)
		return -EINVAL;

	if (!p->dev) {
		FUNC0(&pdev->dev,
			"Platform has not set soc_camera_device pointer!\n");
		return -EINVAL;
	}

	priv = FUNC4(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	icd = FUNC7(p->dev);

	/* soc-camera convention: control's drvdata points to the subdev */
	FUNC5(pdev, &priv->subdev);
	/* Set the control device reference */
	FUNC2(&icd->dev, &pdev->dev);

	icd->ops = &soc_camera_platform_ops;

	ici = FUNC8(icd->dev.parent);

	FUNC11(&priv->subdev, &platform_subdev_ops);
	FUNC10(&priv->subdev, p);
	FUNC6(priv->subdev.name, FUNC1(&pdev->dev), V4L2_SUBDEV_NAME_SIZE);

	ret = FUNC9(&ici->v4l2_dev, &priv->subdev);
	if (ret)
		goto evdrs;

	return ret;

evdrs:
	icd->ops = NULL;
	FUNC5(pdev, NULL);
	FUNC3(priv);
	return ret;
}