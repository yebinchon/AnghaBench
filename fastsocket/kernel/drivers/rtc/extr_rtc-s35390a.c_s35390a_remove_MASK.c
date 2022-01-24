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
struct s35390a {int /*<<< orphan*/  rtc; scalar_t__* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct s35390a* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct s35390a*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	unsigned int i;

	struct s35390a *s35390a = FUNC0(client);
	for (i = 1; i < 8; ++i)
		if (s35390a->client[i])
			FUNC2(s35390a->client[i]);

	FUNC4(s35390a->rtc);
	FUNC3(s35390a);
	FUNC1(client, NULL);

	return 0;
}