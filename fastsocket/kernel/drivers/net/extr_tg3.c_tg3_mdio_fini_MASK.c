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
struct tg3 {int /*<<< orphan*/  mdio_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIOBUS_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	if (FUNC2(tp, MDIOBUS_INITED)) {
		FUNC3(tp, MDIOBUS_INITED);
		FUNC1(tp->mdio_bus);
		FUNC0(tp->mdio_bus);
	}
}