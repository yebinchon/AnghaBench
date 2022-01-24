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
struct ivtv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*) ; 

__attribute__((used)) static int FUNC2(struct ivtv *itv, int val)
{
	int i;

	FUNC1(itv);
	for (i = 0; i < 1000; ++i) {
		if (FUNC0(itv) == val)
			return 1;
	}
	return 0;
}