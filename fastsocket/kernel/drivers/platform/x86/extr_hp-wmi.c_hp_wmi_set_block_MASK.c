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

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  HPWMI_WIRELESS_QUERY ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(void *data, bool blocked)
{
	unsigned long b = (unsigned long) data;
	int query = FUNC0(b + 8) | ((!blocked) << b);

	return FUNC1(HPWMI_WIRELESS_QUERY, 1, query);
}