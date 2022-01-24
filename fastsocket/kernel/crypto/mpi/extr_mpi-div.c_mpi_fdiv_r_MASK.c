#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int sign; scalar_t__ nlimbs; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

int
FUNC4( MPI rem, MPI dividend, MPI divisor )
{
	int rc = -ENOMEM;
	int divisor_sign = divisor->sign;
	MPI temp_divisor = NULL;

	/* We need the original value of the divisor after the remainder has been
	 * preliminary calculated.	We have to copy it to temporary space if it's
	 * the same variable as REM.  */
	if( rem == divisor ) {
		if (FUNC1( &temp_divisor, divisor ) < 0) goto nomem;
		divisor = temp_divisor;
	}

	if (FUNC3(NULL, rem, dividend, divisor ) < 0) goto nomem;
	if( ((divisor_sign?1:0) ^ (dividend->sign?1:0)) && rem->nlimbs )
		if (FUNC0( rem, rem, divisor) < 0) goto nomem;

	rc = 0;

 nomem:
	if( temp_divisor )
		FUNC2(temp_divisor);
	return rc;
}