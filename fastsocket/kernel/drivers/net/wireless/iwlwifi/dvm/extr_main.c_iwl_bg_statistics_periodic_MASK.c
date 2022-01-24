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
struct iwl_priv {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct iwl_priv *priv = (struct iwl_priv *)data;

	if (FUNC2(STATUS_EXIT_PENDING, &priv->status))
		return;

	/* dont send host command if rf-kill is on */
	if (!FUNC0(priv))
		return;

	FUNC1(priv, CMD_ASYNC, false);
}