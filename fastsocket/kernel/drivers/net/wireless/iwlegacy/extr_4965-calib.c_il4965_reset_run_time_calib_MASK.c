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
struct il_sensitivity_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * delta_gain_code; } ;
struct il_priv {TYPE_1__ chain_noise_data; TYPE_1__ sensitivity_data; } ;
struct il_chain_noise_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAIN_NOISE_DELTA_GAIN_INIT_VAL ; 
 int /*<<< orphan*/  CMD_ASYNC ; 
 int NUM_RX_CHAINS ; 
 int /*<<< orphan*/  FUNC0 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct il_priv *il)
{
	int i;
	FUNC1(&(il->sensitivity_data), 0, sizeof(struct il_sensitivity_data));
	FUNC1(&(il->chain_noise_data), 0, sizeof(struct il_chain_noise_data));
	for (i = 0; i < NUM_RX_CHAINS; i++)
		il->chain_noise_data.delta_gain_code[i] =
		    CHAIN_NOISE_DELTA_GAIN_INIT_VAL;

	/* Ask for stats now, the uCode will send notification
	 * periodically after association */
	FUNC0(il, CMD_ASYNC, true);
}