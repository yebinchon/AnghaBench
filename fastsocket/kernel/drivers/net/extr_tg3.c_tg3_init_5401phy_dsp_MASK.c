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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_TG3_AUXCTL_SHDWSEL_AUXCTL ; 
 int FUNC0 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct tg3*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct tg3 *tp)
{
	int err;

	/* Turn off tap power management. */
	/* Set Extended packet length bit */
	err = FUNC0(tp, MII_TG3_AUXCTL_SHDWSEL_AUXCTL, 0x4c20);

	err |= FUNC1(tp, 0x0012, 0x1804);
	err |= FUNC1(tp, 0x0013, 0x1204);
	err |= FUNC1(tp, 0x8006, 0x0132);
	err |= FUNC1(tp, 0x8006, 0x0232);
	err |= FUNC1(tp, 0x201f, 0x0a20);

	FUNC2(40);

	return err;
}