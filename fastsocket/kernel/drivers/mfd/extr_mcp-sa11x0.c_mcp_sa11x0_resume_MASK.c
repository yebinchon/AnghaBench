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
struct platform_device {int dummy; } ;
struct mcp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mccr0; int /*<<< orphan*/  mccr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  Ser4MCCR0 ; 
 int /*<<< orphan*/  Ser4MCCR1 ; 
 struct mcp* FUNC0 (struct platform_device*) ; 
 TYPE_1__* FUNC1 (struct mcp*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *dev)
{
	struct mcp *mcp = FUNC0(dev);

	Ser4MCCR1 = FUNC1(mcp)->mccr1;
	Ser4MCCR0 = FUNC1(mcp)->mccr0;

	return 0;
}