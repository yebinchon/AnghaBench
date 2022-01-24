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
 int /*<<< orphan*/  MAX_PROP_LEN ; 
 int /*<<< orphan*/  PLANETCORE_KEY_SERIAL_PORT ; 
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 void* FUNC2 (char*) ; 
 char* FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prop_buf ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,char*) ; 

void FUNC6(const char *table)
{
	char *path;
	const char *label;
	void *node, *chosen;

	label = FUNC4(table, PLANETCORE_KEY_SERIAL_PORT);
	if (!label)
		return;

	node = FUNC1(NULL, "linux,planetcore-label",
	                                   label);
	if (!node)
		return;

	path = FUNC3(node, prop_buf, MAX_PROP_LEN);
	if (!path)
		return;

	chosen = FUNC2("/chosen");
	if (!chosen)
		chosen = FUNC0(NULL, "chosen");
	if (!chosen)
		return;

	FUNC5(chosen, "linux,stdout-path", path);
}