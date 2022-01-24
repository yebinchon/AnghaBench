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
struct twl4030_client {TYPE_1__* client; } ;
struct resource {int start; int /*<<< orphan*/  flags; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*,void*,unsigned int) ; 
 int FUNC6 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 struct twl4030_client* twl4030_modules ; 

__attribute__((used)) static struct device *
FUNC9(unsigned chip, const char *name, int num,
		void *pdata, unsigned pdata_len,
		bool can_wakeup, int irq0, int irq1)
{
	struct platform_device	*pdev;
	struct twl4030_client	*twl = &twl4030_modules[chip];
	int			status;

	pdev = FUNC7(name, num);
	if (!pdev) {
		FUNC1(&twl->client->dev, "can't alloc dev\n");
		status = -ENOMEM;
		goto err;
	}

	FUNC3(&pdev->dev, can_wakeup);
	pdev->dev.parent = &twl->client->dev;

	if (pdata) {
		status = FUNC5(pdev, pdata, pdata_len);
		if (status < 0) {
			FUNC1(&pdev->dev, "can't add platform_data\n");
			goto err;
		}
	}

	if (irq0) {
		struct resource r[2] = {
			{ .start = irq0, .flags = IORESOURCE_IRQ, },
			{ .start = irq1, .flags = IORESOURCE_IRQ, },
		};

		status = FUNC6(pdev, r, irq1 ? 2 : 1);
		if (status < 0) {
			FUNC1(&pdev->dev, "can't add irqs\n");
			goto err;
		}
	}

	status = FUNC4(pdev);

err:
	if (status < 0) {
		FUNC8(pdev);
		FUNC2(&twl->client->dev, "can't add %s dev\n", name);
		return FUNC0(status);
	}
	return &pdev->dev;
}