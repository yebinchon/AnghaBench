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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int FUNC0 (char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static ssize_t FUNC2(const char *buf, size_t count,
			    acpi_handle handle, int mask)
{
	int rv, value;
	int out = 0;

	rv = FUNC0(buf, count, &value);
	if (rv > 0)
		out = value ? 1 : 0;

	FUNC1(handle, out, mask);

	return rv;
}