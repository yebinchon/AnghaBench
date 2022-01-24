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
 size_t FUNC0 (char const*) ; 
 char FUNC1 (char const) ; 

__attribute__((used)) static void FUNC2(char *attr, const char *value)
{
	size_t len;
	size_t i;

	len = FUNC0(value);

	if ((len > 0) && (value[len - 1] == '\n'))
		len--;

	for (i = 0; i < CPI_LENGTH_NAME; i++) {
		if (i < len)
			attr[i] = FUNC1(value[i]);
		else
			attr[i] = ' ';
	}
}