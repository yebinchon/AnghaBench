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
 int EINVAL ; 
 int EKEYREJECTED ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(const MPI datahash, const MPI sig[], const MPI pkey[])
{
	MPI p, q, g, y, r, s;
	MPI w = NULL, u1 = NULL, u2 = NULL, v = NULL;
	MPI base[3];
	MPI exp[3];
	int rc;

	if (!datahash ||
	    !sig[0] || !sig[1] ||
	    !pkey[0] || !pkey[1] || !pkey[2] || !pkey[3])
		return -EINVAL;

	p = pkey[0];	/* prime */
	q = pkey[1];	/* group order */
	g = pkey[2];	/* group generator */
	y = pkey[3];	/* g^x mod p */
	r = sig[0];
	s = sig[1];

	if (!(FUNC2(r, 0) > 0 && FUNC1(r, q) < 0)) {
		FUNC9("DSA_verify assertion failed [0 < r < q]\n");
		return -EKEYREJECTED;
	}

	if (!(FUNC2(s, 0) > 0 && FUNC1(s, q) < 0)) {
		FUNC9("DSA_verify assertion failed [0 < s < q]\n");
		return -EKEYREJECTED;
	}

	rc = -ENOMEM;
	w  = FUNC0(FUNC5(q)); if (!w ) goto cleanup;
	u1 = FUNC0(FUNC5(q)); if (!u1) goto cleanup;
	u2 = FUNC0(FUNC5(q)); if (!u2) goto cleanup;
	v  = FUNC0(FUNC5(p)); if (!v ) goto cleanup;

	/* w = s^(-1) mod q */
	if (FUNC6(w, s, q) < 0)
		goto cleanup;

	/* u1 = (datahash * w) mod q */
	if (FUNC7(u1, datahash, w, q) < 0)
		goto cleanup;

	/* u2 = r * w mod q  */
	if (FUNC7(u2, r, w, q) < 0)
		goto cleanup;

	/* v =  g^u1 * y^u2 mod p mod q */
	base[0] = g;	exp[0] = u1;
	base[1] = y;	exp[1] = u2;
	base[2] = NULL;	exp[2] = NULL;

	if (FUNC8(v, base, exp, p) < 0)
		goto cleanup;

	if (FUNC3(v, v, q) < 0)
		goto cleanup;

	rc = (FUNC1(v, r) == 0) ? 0 : -EKEYREJECTED;

cleanup:
	FUNC4(w);
	FUNC4(u1);
	FUNC4(u2);
	FUNC4(v);
	return rc;
}