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
struct diag2fc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int) ; 

__attribute__((used)) static void *FUNC4(char *query, unsigned int *count, int offset)
{
	void *data;
	int size;

	do {
		size = FUNC1(0, query, NULL);
		if (size < 0)
			return FUNC0(-EACCES);
		data = FUNC3(size + offset);
		if (!data)
			return FUNC0(-ENOMEM);
		if (FUNC1(size, query, data + offset) == 0)
			break;
		FUNC2(data);
	} while (1);
	*count = (size / sizeof(struct diag2fc_data));

	return data;
}