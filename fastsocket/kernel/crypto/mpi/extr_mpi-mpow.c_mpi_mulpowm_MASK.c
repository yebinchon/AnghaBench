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
typedef  int /*<<< orphan*/ * MPI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13( MPI res, MPI *basearray, MPI *exparray, MPI m)
{
	int rc = -ENOMEM;
	int k;	/* number of elements */
	int t;	/* bit size of largest exponent */
	int i, j, idx;
	MPI *G = NULL;	/* table with precomputed values of size 2^k */
	MPI tmp = NULL;

	for(k=0; basearray[k]; k++ )
		;
	if (!k) { FUNC12("mpi_mulpowm: assert(k) failed\n"); FUNC0(); }
	for(t=0, i=0; (tmp=exparray[i]); i++ ) {
		j = FUNC8(tmp);
		if( j > t )
			t = j;
	}
	if (i!=k) { FUNC12("mpi_mulpowm: assert(i==k) failed\n"); FUNC0(); }
	if (!t)	  { FUNC12("mpi_mulpowm: assert(t) failed\n"); FUNC0(); }
	if (k>=10) { FUNC12("mpi_mulpowm: assert(k<10) failed\n"); FUNC0(); }

	G = FUNC3( (1<<k) * sizeof *G, GFP_KERNEL );
	if (!G) goto nomem;

	/* and calculate */
	tmp =  FUNC4( FUNC9(m)+1 ); if (!tmp) goto nomem;
	if (FUNC11( res, 1 ) < 0) goto nomem;
	for(i = 1; i <= t; i++ ) {
		if (FUNC10(tmp, res, res, m ) < 0) goto nomem;
		idx = FUNC1( exparray, k, i, t );
		if (!(idx >= 0 && idx < (1<<k))) {
			FUNC12("mpi_mulpowm: assert(idx >= 0 && idx < (1<<k)) failed\n");
			FUNC0();
		}
		if( !G[idx] ) {
			if( !idx ) {
				G[0] = FUNC5( 1 );
				if (!G[0]) goto nomem;
			}
			else {
				for(j=0; j < k; j++ ) {
					if( (idx & (1<<j) ) ) {
						if( !G[idx] ) {
							if (FUNC6( &G[idx], basearray[j] ) < 0)
								goto nomem;
						}
						else {
							if (FUNC10(G[idx],G[idx],basearray[j],m) < 0)
								goto nomem;
						}
					}
				}
				if( !G[idx] ) {
					G[idx] = FUNC4(0);
					if (!G[idx]) goto nomem;
				}
			}
		}
		if (FUNC10(res, tmp, G[idx], m ) < 0) goto nomem;
	}

	rc = 0;
 nomem:
	/* cleanup */
	FUNC7(tmp);
	for(i=0; i < (1<<k); i++ )
		FUNC7(G[i]);
	FUNC2(G);
	return rc;
}