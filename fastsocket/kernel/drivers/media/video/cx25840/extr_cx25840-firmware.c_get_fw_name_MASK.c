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
struct i2c_client {int dummy; } ;
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 char const* firmware ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 scalar_t__ FUNC1 (struct cx25840_state*) ; 
 scalar_t__ FUNC2 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(struct i2c_client *client)
{
	struct cx25840_state *state = FUNC3(FUNC0(client));

	if (firmware[0])
		return firmware;
	if (FUNC2(state))
		return "v4l-cx23885-avcore-01.fw";
	if (FUNC1(state))
		return "v4l-cx231xx-avcore-01.fw";
	return "v4l-cx25840.fw";
}