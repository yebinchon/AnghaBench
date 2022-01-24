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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 unsigned long long BITS_COMPOUND ; 
 char** page_flag_names ; 
 unsigned long long FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static uint64_t FUNC3(const char *str, int len)
{
	int i;

	if (!*str || !len)
		return 0;

	if (len <= 8 && !FUNC2(str, "compound", len))
		return BITS_COMPOUND;

	for (i = 0; i < FUNC0(page_flag_names); i++) {
		if (!page_flag_names[i])
			continue;
		if (!FUNC2(str, page_flag_names[i] + 2, len))
			return 1ULL << i;
	}

	return FUNC1(str);
}