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
 size_t CPI_LENGTH_NAME ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char*,char const) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *attr, const char *str)
{
	size_t len;
	size_t i;

	len = FUNC3(str);

	if ((len > 0) && (str[len - 1] == '\n'))
		len--;

	if (len > CPI_LENGTH_NAME)
		return -EINVAL;

	for (i = 0; i < len ; i++) {
		if (FUNC0(str[i]) || FUNC1(str[i]) ||
		    FUNC2("$@# ", str[i]))
			continue;
		return -EINVAL;
	}

	return 0;
}