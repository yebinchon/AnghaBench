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
struct il_priv {int /*<<< orphan*/  stats_periodic; int /*<<< orphan*/  run_time_calib_work; int /*<<< orphan*/  alive_start; int /*<<< orphan*/  init_alive_start; int /*<<< orphan*/  txpower_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 

__attribute__((used)) static void
FUNC5(struct il_priv *il)
{
	FUNC2(&il->txpower_work);
	FUNC1(&il->init_alive_start);
	FUNC0(&il->alive_start);
	FUNC2(&il->run_time_calib_work);

	FUNC4(il);

	FUNC3(&il->stats_periodic);
}