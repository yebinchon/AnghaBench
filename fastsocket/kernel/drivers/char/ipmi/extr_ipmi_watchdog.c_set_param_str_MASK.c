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
struct kernel_param {int /*<<< orphan*/  arg; } ;
typedef  int (* action_fn ) (char*,int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  IPMI_SET_TIMEOUT_HB_IF_NECESSARY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ watchdog_user ; 

__attribute__((used)) static int FUNC4(const char *val, struct kernel_param *kp)
{
	action_fn  fn = (action_fn) kp->arg;
	int        rv = 0;
	char       valcp[16];
	char       *s;

	FUNC2(valcp, val, 16);
	valcp[15] = '\0';

	s = FUNC3(valcp);

	rv = fn(s, NULL);
	if (rv)
		goto out;

	FUNC0();
	if (watchdog_user)
		rv = FUNC1(IPMI_SET_TIMEOUT_HB_IF_NECESSARY);

 out:
	return rv;
}