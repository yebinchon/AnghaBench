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
struct TYPE_14__ {scalar_t__ sign; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__**,TYPE_1__* const) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*) ; 

int
FUNC5( MPI g, const MPI xa, const MPI xb )
{
    MPI a = NULL, b = NULL;

    if (FUNC1(&a, xa) < 0)
	    goto nomem;

    if (FUNC1(&b, xb) < 0)
	    goto nomem;

    /* TAOCP Vol II, 4.5.2, Algorithm A */
    a->sign = 0;
    b->sign = 0;
    while( FUNC0( b, 0 ) ) {
	    if (FUNC2( g, a, b ) < 0) /* g used as temorary variable */
		    goto nomem;
	    if (FUNC4(a,b) < 0)
		    goto nomem;
	    if (FUNC4(b,g) < 0)
		    goto nomem;
    }
    if (FUNC4(g, a) < 0)
	    goto nomem;

    FUNC3(a);
    FUNC3(b);
    return !FUNC0( g, 1);

 nomem:
    FUNC3(a);
    FUNC3(b);
    return -ENOMEM;
}