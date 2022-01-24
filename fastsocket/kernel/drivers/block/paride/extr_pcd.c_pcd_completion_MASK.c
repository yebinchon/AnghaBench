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
struct pcd_unit {int /*<<< orphan*/  pi; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_BUSY ; 
 int IDE_DRQ ; 
 int IDE_ERR ; 
 int IDE_READY ; 
 int /*<<< orphan*/  PCD_TMO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct pcd_unit*,int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pcd_unit*,int) ; 
 int verbose ; 

__attribute__((used)) static int FUNC7(struct pcd_unit *cd, char *buf, char *fun)
{
	int r, d, p, n, k, j;

	r = -1;
	k = 0;
	j = 0;

	if (!FUNC1(cd, IDE_BUSY, IDE_DRQ | IDE_READY | IDE_ERR,
		      fun, "completion")) {
		r = 0;
		while (FUNC6(cd, 7) & IDE_DRQ) {
			d = FUNC6(cd, 4) + 256 * FUNC6(cd, 5);
			n = (d + 3) & 0xfffc;
			p = FUNC6(cd, 2) & 3;

			if ((p == 2) && (n > 0) && (j == 0)) {
				FUNC3(cd->pi, buf, n);
				if (verbose > 1)
					FUNC4("%s: %s: Read %d bytes\n",
					       cd->name, fun, n);
				r = 0;
				j++;
			} else {
				if (verbose > 1)
					FUNC4
					    ("%s: %s: Unexpected phase %d, d=%d, k=%d\n",
					     cd->name, fun, p, d, k);
				if (verbose < 2)
					FUNC5(
					    "%s: WARNING: ATAPI phase errors\n",
					    cd->name);
				FUNC0(1);
			}
			if (k++ > PCD_TMO) {
				FUNC4("%s: Stuck DRQ\n", cd->name);
				break;
			}
			if (FUNC1
			    (cd, IDE_BUSY, IDE_DRQ | IDE_READY | IDE_ERR, fun,
			     "completion")) {
				r = -1;
				break;
			}
		}
	}

	FUNC2(cd->pi);

	return r;
}