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
struct msp_state {scalar_t__ watch_stereo; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 scalar_t__ FUNC1 (struct i2c_client*) ; 
 scalar_t__ msp_once ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 struct msp_state* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	struct msp_state *state = FUNC3(FUNC0(client));

	if (FUNC1(client))
		FUNC2(client);

	if (msp_once)
		state->watch_stereo = 0;
}