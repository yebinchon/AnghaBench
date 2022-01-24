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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t FUNC0 (char*,size_t,char const*,int /*<<< orphan*/ *,unsigned int) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(const char *fmt, u32 *array, unsigned array_size)
{
	size_t len = FUNC0(NULL, 0, fmt, array, array_size);
	char *ret;

	ret = FUNC1(len, GFP_KERNEL);
	if (ret == NULL)
		return NULL;

	FUNC0(ret, len, fmt, array, array_size);
	return ret;
}