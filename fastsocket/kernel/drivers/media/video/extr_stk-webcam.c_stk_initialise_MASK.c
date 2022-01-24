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
struct stk_camera {int dummy; } ;
struct regval {int reg; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*) ; 
 struct regval* stk1125_initvals ; 
 int FUNC3 (struct stk_camera*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct stk_camera*) ; 

__attribute__((used)) static int FUNC5(struct stk_camera *dev)
{
	struct regval *rv;
	int ret;
	if (!FUNC1(dev))
		return -ENODEV;
	if (FUNC0(dev))
		return 0;
	rv = stk1125_initvals;
	while (rv->reg != 0xffff) {
		ret = FUNC3(dev, rv->reg, rv->val);
		if (ret)
			return ret;
		rv++;
	}
	if (FUNC4(dev) == 0) {
		FUNC2(dev);
		return 0;
	} else
		return -1;
}