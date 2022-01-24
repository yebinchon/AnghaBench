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
struct interact {int /*<<< orphan*/  dev; } ;
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 struct interact* FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct interact*) ; 

__attribute__((used)) static void FUNC5(struct gameport *gameport)
{
	struct interact *interact = FUNC1(gameport);

	FUNC3(interact->dev);
	FUNC0(gameport);
	FUNC2(gameport, NULL);
	FUNC4(interact);
}