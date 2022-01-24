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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 scalar_t__ FUNC2 (int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 long FUNC4 (int,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC5(int fd, char *name,
				 uint64_t *buf,
				 unsigned long index,
				 unsigned long count)
{
	long bytes;

	if (index > ULONG_MAX / 8)
		FUNC1("index overflow: %lu\n", index);

	if (FUNC2(fd, index * 8, SEEK_SET) < 0) {
		FUNC3(name);
		FUNC0(EXIT_FAILURE);
	}

	bytes = FUNC4(fd, buf, count * 8);
	if (bytes < 0) {
		FUNC3(name);
		FUNC0(EXIT_FAILURE);
	}
	if (bytes % 8)
		FUNC1("partial read: %lu bytes\n", bytes);

	return bytes / 8;
}