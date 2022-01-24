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

/* Variables and functions */
 scalar_t__* config ; 
 int configured ; 
 scalar_t__ final_ack ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdbts_io_ops ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

__attribute__((used)) static int FUNC6(void)
{
	int err = 0;

	if (!FUNC5(config) || FUNC0(config[0]))
		goto noconfig;
	err = FUNC2(config);
	if (err)
		goto noconfig;

	final_ack = 0;
	FUNC4(1);

	err = FUNC1(&kgdbts_io_ops);
	if (err) {
		configured = 0;
		return err;
	}
	configured = 1;
	FUNC3();

	return err;

noconfig:
	config[0] = 0;
	configured = 0;

	return err;
}