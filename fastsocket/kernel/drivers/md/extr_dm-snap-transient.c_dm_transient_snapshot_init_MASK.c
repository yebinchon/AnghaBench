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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _transient_compat_type ; 
 int /*<<< orphan*/  _transient_type ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int r;

	r = FUNC1(&_transient_type);
	if (r) {
		FUNC0("Unable to register transient exception store type");
		return r;
	}

	r = FUNC1(&_transient_compat_type);
	if (r) {
		FUNC0("Unable to register old-style transient "
		       "exception store type");
		FUNC2(&_transient_type);
		return r;
	}

	return r;
}