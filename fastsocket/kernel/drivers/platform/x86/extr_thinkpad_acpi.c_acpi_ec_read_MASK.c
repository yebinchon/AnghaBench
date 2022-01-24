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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int,int*) ; 
 scalar_t__ ecrd_handle ; 

__attribute__((used)) static int FUNC2(int i, u8 *p)
{
	int v;

	if (ecrd_handle) {
		if (!FUNC0(ecrd_handle, &v, NULL, "dd", i))
			return 0;
		*p = v;
	} else {
		if (FUNC1(i, p) < 0)
			return 0;
	}

	return 1;
}