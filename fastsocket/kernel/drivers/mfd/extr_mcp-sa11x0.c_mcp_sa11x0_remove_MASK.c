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
struct platform_device {int dummy; } ;
struct mcp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcp*) ; 
 struct mcp* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct mcp *mcp = FUNC1(dev);

	FUNC2(dev, NULL);
	FUNC0(mcp);
	FUNC3(0x80060000, 0x60);

	return 0;
}