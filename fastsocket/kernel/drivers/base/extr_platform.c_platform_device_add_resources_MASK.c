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
struct resource {int dummy; } ;
struct platform_device {unsigned int num_resources; struct resource* resource; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct resource* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,struct resource*,int) ; 

int FUNC2(struct platform_device *pdev,
				  struct resource *res, unsigned int num)
{
	struct resource *r;

	r = FUNC0(sizeof(struct resource) * num, GFP_KERNEL);
	if (r) {
		FUNC1(r, res, sizeof(struct resource) * num);
		pdev->resource = r;
		pdev->num_resources = num;
	}
	return r ? 0 : -ENOMEM;
}