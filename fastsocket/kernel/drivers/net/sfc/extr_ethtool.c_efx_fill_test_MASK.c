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
typedef  int u64 ;
struct ethtool_string {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,...) ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3(unsigned int test_index,
			  struct ethtool_string *strings, u64 *data,
			  int *test, const char *unit_format, int unit_id,
			  const char *test_format, const char *test_id)
{
	struct ethtool_string unit_str, test_str;

	/* Fill data value, if applicable */
	if (data)
		data[test_index] = *test;

	/* Fill string, if applicable */
	if (strings) {
		if (FUNC1(unit_format, '%'))
			FUNC0(unit_str.name, sizeof(unit_str.name),
				 unit_format, unit_id);
		else
			FUNC2(unit_str.name, unit_format);
		FUNC0(test_str.name, sizeof(test_str.name),
			 test_format, test_id);
		FUNC0(strings[test_index].name,
			 sizeof(strings[test_index].name),
			 "%-6s %-24s", unit_str.name, test_str.name);
	}
}