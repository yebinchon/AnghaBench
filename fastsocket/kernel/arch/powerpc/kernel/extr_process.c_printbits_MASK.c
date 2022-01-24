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
struct regbit {int bit; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(unsigned long val, struct regbit *bits)
{
	const char *sep = "";

	FUNC0("<");
	for (; bits->bit; ++bits)
		if (val & bits->bit) {
			FUNC0("%s%s", sep, bits->name);
			sep = ",";
		}
	FUNC0(">");
}