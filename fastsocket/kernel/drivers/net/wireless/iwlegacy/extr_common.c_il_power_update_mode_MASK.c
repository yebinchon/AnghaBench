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
struct il_priv {int dummy; } ;
struct il_powertable_cmd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct il_priv*,struct il_powertable_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,struct il_powertable_cmd*) ; 

int
FUNC2(struct il_priv *il, bool force)
{
	struct il_powertable_cmd cmd;

	FUNC1(il, &cmd);
	return FUNC0(il, &cmd, force);
}