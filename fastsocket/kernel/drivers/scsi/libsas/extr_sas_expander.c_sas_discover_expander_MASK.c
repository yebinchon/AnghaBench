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
struct domain_device {int /*<<< orphan*/  sas_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct domain_device*) ; 
 int FUNC3 (struct domain_device*) ; 
 int FUNC4 (struct domain_device*) ; 
 int FUNC5 (struct domain_device*) ; 
 int FUNC6 (struct domain_device*) ; 
 int FUNC7 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct domain_device*) ; 

__attribute__((used)) static int FUNC9(struct domain_device *dev)
{
	int res;

	res = FUNC7(dev);
	if (res)
		return res;

	res = FUNC4(dev);
	if (res)
		goto out_err;
	res = FUNC5(dev);
	if (res)
		goto out_err;

	res = FUNC6(dev);
	if (res) {
		FUNC1("expander %016llx discovery failed(0x%x)\n",
			    FUNC0(dev->sas_addr), res);
		goto out_err;
	}

	FUNC2(dev);
	res = FUNC3(dev);
	if (res)
		goto out_err;
	return 0;
out_err:
	FUNC8(dev);
	return res;
}