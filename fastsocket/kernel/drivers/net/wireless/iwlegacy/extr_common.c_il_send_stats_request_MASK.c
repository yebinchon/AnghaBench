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
typedef  int u8 ;
struct il_stats_cmd {int /*<<< orphan*/  configuration_flags; } ;
struct il_priv {int dummy; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int /*<<< orphan*/  C_STATS ; 
 int /*<<< orphan*/  IL_STATS_CONF_CLEAR_STATS ; 
 int FUNC0 (struct il_priv*,int /*<<< orphan*/ ,int,struct il_stats_cmd*) ; 
 int FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int,struct il_stats_cmd*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct il_priv *il, u8 flags, bool clear)
{
	struct il_stats_cmd stats_cmd = {
		.configuration_flags = clear ? IL_STATS_CONF_CLEAR_STATS : 0,
	};

	if (flags & CMD_ASYNC)
		return FUNC1(il, C_STATS, sizeof(struct il_stats_cmd),
					     &stats_cmd, NULL);
	else
		return FUNC0(il, C_STATS, sizeof(struct il_stats_cmd),
				       &stats_cmd);
}