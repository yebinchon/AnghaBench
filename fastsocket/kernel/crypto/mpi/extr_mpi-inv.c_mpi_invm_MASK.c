#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int sign; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__**,TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC11( MPI x, const MPI a, const MPI n )
{
	/* Extended Euclid's algorithm (See TAOPC Vol II, 4.5.2, Alg X)
	 * modified according to Michael Penk's solution for Exercice 35
	 * with further enhancement */
	MPI u = NULL, v = NULL;
	MPI u1 = NULL, u2 = NULL, u3 = NULL;
	MPI v1 = NULL, v2 = NULL, v3 = NULL;
	MPI t1 = NULL, t2 = NULL, t3 = NULL;
	unsigned k;
	int sign;
	int odd = 0;
	int rc = -ENOMEM;

	if (FUNC4(&u, a) < 0) goto cleanup;
	if (FUNC4(&v, n) < 0) goto cleanup;

	for(k=0; !FUNC10(u,0) && !FUNC10(v,0); k++ ) {
		if (FUNC7(u, u, 1) < 0) goto cleanup;
		if (FUNC7(v, v, 1) < 0) goto cleanup;
	}
	odd = FUNC10(v,0);

	u1 = FUNC2(1); if (!u1) goto cleanup;
	if( !odd ) {
		u2 = FUNC2(0);
		if (!u2) goto cleanup;
	}
	if (FUNC4(&u3, u) < 0) goto cleanup;
	if (FUNC4(&v1, v) < 0) goto cleanup;
	if( !odd ) {
		v2 = FUNC1( FUNC6(u) );  if (!v2) goto cleanup;
		if (FUNC9( v2, u1, u ) < 0) goto cleanup; /* U is used as const 1 */
	}
	if (FUNC4(&v3, v) < 0) goto cleanup;
	if( FUNC10(u, 0) ) { /* u is odd */
		t1 = FUNC2(0); if (!t1) goto cleanup;
		if( !odd ) {
			t2 = FUNC2(1); if (!t2) goto cleanup;
			t2->sign = 1;
		}
		if (FUNC4(&t3, v) < 0) goto cleanup;
		t3->sign = !t3->sign;
		goto Y4;
	}
	else {
		t1 = FUNC2(1); if (!t1) goto cleanup;
		if( !odd ) {
			t2 = FUNC2(0); if (!t2) goto cleanup;
		}
		if (FUNC4(&t3, u) < 0) goto cleanup;
	}
	do {
		do {
			if( !odd ) {
				if( FUNC10(t1, 0) || FUNC10(t2, 0) ) { /* one is odd */
					if (FUNC0(t1, t1, v) < 0) goto cleanup;
					if (FUNC9(t2, t2, u) < 0) goto cleanup;
				}
				if (FUNC7(t1, t1, 1) < 0) goto cleanup;
				if (FUNC7(t2, t2, 1) < 0) goto cleanup;
				if (FUNC7(t3, t3, 1) < 0) goto cleanup;
			}
			else {
				if( FUNC10(t1, 0) )
					if (FUNC0(t1, t1, v) < 0) goto cleanup;
				if (FUNC7(t1, t1, 1) < 0) goto cleanup;
				if (FUNC7(t3, t3, 1) < 0) goto cleanup;
			}
		Y4:
			;
		} while( !FUNC10( t3, 0 ) ); /* while t3 is even */

		if( !t3->sign ) {
			if (FUNC8(u1, t1) < 0) goto cleanup;
			if( !odd )
				if (FUNC8(u2, t2) < 0) goto cleanup;
			if (FUNC8(u3, t3) < 0) goto cleanup;
		}
		else {
			if (FUNC9(v1, v, t1) < 0) goto cleanup;
			sign = u->sign; u->sign = !u->sign;
			if( !odd )
				if (FUNC9(v2, u, t2) < 0) goto cleanup;
			u->sign = sign;
			sign = t3->sign; t3->sign = !t3->sign;
			if (FUNC8(v3, t3) < 0) goto cleanup;
			t3->sign = sign;
		}
		if (FUNC9(t1, u1, v1) < 0) goto cleanup;
		if( !odd )
			if (FUNC9(t2, u2, v2) < 0) goto cleanup;
		if (FUNC9(t3, u3, v3) < 0) goto cleanup;
		if( t1->sign ) {
			if (FUNC0(t1, t1, v) < 0) goto cleanup;
			if( !odd )
				if (FUNC9(t2, t2, u) < 0) goto cleanup;
		}
	} while( FUNC3( t3, 0 ) ); /* while t3 != 0 */
	/* mpi_lshift( u3, k ); */
	rc = FUNC8(x, u1);

 cleanup:
	FUNC5(u1);
	FUNC5(v1);
	FUNC5(t1);
	if( !odd ) {
		FUNC5(u2);
		FUNC5(v2);
		FUNC5(t2);
	}
	FUNC5(u3);
	FUNC5(v3);
	FUNC5(t3);

	FUNC5(u);
	FUNC5(v);
	return rc;
}