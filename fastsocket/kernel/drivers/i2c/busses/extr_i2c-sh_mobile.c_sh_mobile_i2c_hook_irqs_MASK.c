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
struct resource {int start; int end; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct platform_device*) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  sh_mobile_i2c_isr ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev, int hook)
{
	struct resource *res;
	int ret = -ENXIO;
	int q, m;
	int k = 0;
	int n = 0;

	while ((res = FUNC2(dev, IORESOURCE_IRQ, k))) {
		for (n = res->start; hook && n <= res->end; n++) {
			if (FUNC3(n, sh_mobile_i2c_isr, IRQF_DISABLED,
					FUNC0(&dev->dev), dev))
				goto rollback;
		}
		k++;
	}

	if (hook)
		return k > 0 ? 0 : -ENOENT;

	k--;
	ret = 0;

 rollback:
	for (q = k; k >= 0; k--) {
		for (m = n; m >= res->start; m--)
			FUNC1(m, dev);

		res = FUNC2(dev, IORESOURCE_IRQ, k - 1);
		m = res->end;
	}

	return ret;
}