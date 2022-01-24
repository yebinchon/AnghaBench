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
struct nouveau_therm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOUVEAU_THERM_CTRL_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_therm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_therm*) ; 

int
FUNC5(struct nouveau_therm *therm)
{
	FUNC3(therm);
	FUNC2(therm);
	FUNC0(therm);

	FUNC1(therm, NOUVEAU_THERM_CTRL_NONE);
	FUNC4(therm);
	return 0;
}