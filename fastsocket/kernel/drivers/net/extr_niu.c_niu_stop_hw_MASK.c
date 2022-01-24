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
struct niu {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct niu*) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*) ; 
 int /*<<< orphan*/  FUNC6 (struct niu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct niu *np)
{
	FUNC7(IFDOWN, "%s: Disable interrupts\n", np->dev->name);
	FUNC1(np, 0);

	FUNC7(IFDOWN, "%s: Disable RX MAC\n", np->dev->name);
	FUNC2(np, 0);

	FUNC7(IFDOWN, "%s: Disable IPP\n", np->dev->name);
	FUNC0(np);

	FUNC7(IFDOWN, "%s: Stop TX channels\n", np->dev->name);
	FUNC6(np);

	FUNC7(IFDOWN, "%s: Stop RX channels\n", np->dev->name);
	FUNC5(np);

	FUNC7(IFDOWN, "%s: Reset TX channels\n", np->dev->name);
	FUNC4(np);

	FUNC7(IFDOWN, "%s: Reset RX channels\n", np->dev->name);
	FUNC3(np);
}