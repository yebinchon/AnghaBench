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
typedef  int ulong ;
struct aoetgt {int nframes; int maxout; int /*<<< orphan*/  ffree; int /*<<< orphan*/  ifs; int /*<<< orphan*/  ifp; int /*<<< orphan*/  addr; struct aoedev* d; } ;
struct aoedev {int ntargets; struct aoetgt** targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct aoetgt*) ; 
 struct aoetgt** FUNC2 (struct aoedev*) ; 
 struct aoetgt* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct aoetgt *
FUNC6(struct aoedev *d, char *addr, ulong nframes)
{
	struct aoetgt *t, **tt, **te;

	tt = d->targets;
	te = tt + d->ntargets;
	for (; tt < te && *tt; tt++)
		;

	if (tt == te) {
		tt = FUNC2(d);
		if (!tt)
			goto nomem;
	}
	t = FUNC3(sizeof(*t), GFP_ATOMIC);
	if (!t)
		goto nomem;
	t->nframes = nframes;
	t->d = d;
	FUNC4(t->addr, addr, sizeof t->addr);
	t->ifp = t->ifs;
	FUNC1(t);
	t->maxout = t->nframes / 2;
	FUNC0(&t->ffree);
	return *tt = t;

 nomem:
	FUNC5("aoe: cannot allocate memory to add target\n");
	return NULL;
}