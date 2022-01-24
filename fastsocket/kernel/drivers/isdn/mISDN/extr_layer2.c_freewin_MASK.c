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
struct layer2 {int /*<<< orphan*/ ** windowar; } ;

/* Variables and functions */
 int MAX_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct layer2 *l2)
{
	int i, cnt = 0;

	for (i = 0; i < MAX_WINDOW; i++) {
		if (l2->windowar[i]) {
			cnt++;
			FUNC0(l2->windowar[i]);
			l2->windowar[i] = NULL;
		}
	}
	return cnt;
}