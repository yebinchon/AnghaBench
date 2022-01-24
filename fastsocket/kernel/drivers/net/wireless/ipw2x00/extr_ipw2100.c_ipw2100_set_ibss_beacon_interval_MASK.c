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
typedef  int /*<<< orphan*/  u32 ;
struct ipw2100_priv {TYPE_1__* ieee; } ;
struct host_command {int host_command_length; int /*<<< orphan*/ * host_command_parameters; int /*<<< orphan*/  host_command_sequence; int /*<<< orphan*/  host_command; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEACON_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IW_MODE_ADHOC ; 
 int FUNC1 (struct ipw2100_priv*) ; 
 int FUNC2 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw2100_priv*,struct host_command*) ; 

__attribute__((used)) static int FUNC4(struct ipw2100_priv *priv,
					    u32 interval, int batch_mode)
{
	struct host_command cmd = {
		.host_command = BEACON_INTERVAL,
		.host_command_sequence = 0,
		.host_command_length = 4
	};
	int err;

	cmd.host_command_parameters[0] = interval;

	FUNC0("enter\n");

	if (priv->ieee->iw_mode == IW_MODE_ADHOC) {
		if (!batch_mode) {
			err = FUNC1(priv);
			if (err)
				return err;
		}

		FUNC3(priv, &cmd);

		if (!batch_mode) {
			err = FUNC2(priv);
			if (err)
				return err;
		}
	}

	FUNC0("exit\n");

	return 0;
}