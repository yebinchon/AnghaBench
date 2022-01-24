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
struct il_priv {int /*<<< orphan*/  alive_start; int /*<<< orphan*/  init_alive_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 

__attribute__((used)) static void
FUNC4(struct il_priv *il)
{
	FUNC2(il);

	FUNC1(&il->init_alive_start);
	FUNC0(&il->alive_start);

	FUNC3(il);
}