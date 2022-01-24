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
struct tty_driver {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__* config ; 
 int configured ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct tty_driver* kgdb_tty_driver ; 
 int kgdb_tty_line ; 
 int /*<<< orphan*/  kgdboc_io_ops ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 struct tty_driver* FUNC4 (scalar_t__*,int*) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct tty_driver *p;
	int tty_line = 0;
	int err;

	err = FUNC2(config);
	if (err || !FUNC3(config) || FUNC0(config[0]))
		goto noconfig;

	err = -ENODEV;

	p = FUNC4(config, &tty_line);
	if (!p)
		goto noconfig;

	kgdb_tty_driver = p;
	kgdb_tty_line = tty_line;

	err = FUNC1(&kgdboc_io_ops);
	if (err)
		goto noconfig;

	configured = 1;

	return 0;

noconfig:
	config[0] = 0;
	configured = 0;

	return err;
}