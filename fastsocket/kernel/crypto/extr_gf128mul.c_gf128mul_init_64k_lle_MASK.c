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
struct gf128mul_64k {TYPE_1__** t; } ;
typedef  int /*<<< orphan*/  be128 ;
struct TYPE_2__ {int /*<<< orphan*/ * t; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gf128mul_64k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct gf128mul_64k *FUNC5(const be128 *g)
{
	struct gf128mul_64k *t;
	int i, j, k;

	t = FUNC4(sizeof(*t), GFP_KERNEL);
	if (!t)
		goto out;

	for (i = 0; i < 16; i++) {
		t->t[i] = FUNC4(sizeof(*t->t[i]), GFP_KERNEL);
		if (!t->t[i]) {
			FUNC1(t);
			t = NULL;
			goto out;
		}
	}

	t->t[0]->t[128] = *g;
	for (j = 64; j > 0; j >>= 1)
		FUNC3(&t->t[0]->t[j], &t->t[0]->t[j + j]);

	for (i = 0;;) {
		for (j = 2; j < 256; j += j)
			for (k = 1; k < j; ++k)
				FUNC0(&t->t[i]->t[j + k],
					  &t->t[i]->t[j], &t->t[i]->t[k]);

		if (++i >= 16)
			break;

		for (j = 128; j > 0; j >>= 1) {
			t->t[i]->t[j] = t->t[i - 1]->t[j];
			FUNC2(&t->t[i]->t[j]);
		}
	}

out:
	return t;
}