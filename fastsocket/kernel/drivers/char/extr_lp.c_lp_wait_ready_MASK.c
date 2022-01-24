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
struct TYPE_2__ {scalar_t__ current_mode; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ IEEE1284_MODE_COMPAT ; 
 int LP_ABORT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (int) ; 
 TYPE_1__* lp_table ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int minor, int nonblock)
{
	int error = 0;

	/* If we're not in compatibility mode, we're ready now! */
	if (lp_table[minor].current_mode != IEEE1284_MODE_COMPAT) {
	  return (0);
	}

	do {
		error = FUNC1 (minor);
		if (error && (nonblock || (FUNC0(minor) & LP_ABORT)))
			break;
		if (FUNC2 (current)) {
			error = -EINTR;
			break;
		}
	} while (error);
	return error;
}