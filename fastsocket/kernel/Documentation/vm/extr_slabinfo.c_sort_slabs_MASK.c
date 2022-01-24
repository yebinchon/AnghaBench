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
struct slabinfo {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slabinfo*,struct slabinfo*,int) ; 
 scalar_t__ show_inverted ; 
 scalar_t__ FUNC1 (struct slabinfo*) ; 
 scalar_t__ FUNC2 (struct slabinfo*) ; 
 struct slabinfo* slabinfo ; 
 int slabs ; 
 scalar_t__ sort_active ; 
 scalar_t__ sort_size ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct slabinfo *s1,*s2;

	for (s1 = slabinfo; s1 < slabinfo + slabs; s1++) {
		for (s2 = s1 + 1; s2 < slabinfo + slabs; s2++) {
			int result;

			if (sort_size)
				result = FUNC2(s1) < FUNC2(s2);
			else if (sort_active)
				result = FUNC1(s1) < FUNC1(s2);
			else
				result = FUNC3(s1->name, s2->name);

			if (show_inverted)
				result = -result;

			if (result > 0) {
				struct slabinfo t;

				FUNC0(&t, s1, sizeof(struct slabinfo));
				FUNC0(s1, s2, sizeof(struct slabinfo));
				FUNC0(s2, &t, sizeof(struct slabinfo));
			}
		}
	}
}