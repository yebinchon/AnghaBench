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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct acpi_parse_state {int /*<<< orphan*/ * aml; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct acpi_parse_state*) ; 
 int /*<<< orphan*/  ps_get_next_package_end ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u8 *FUNC3(struct acpi_parse_state *parser_state)
{
	u8 *start = parser_state->aml;
	u32 package_length;

	FUNC0(ps_get_next_package_end);

	/* Function below updates parser_state->Aml */

	package_length = FUNC1(parser_state);

	FUNC2(start + package_length);	/* end of package */
}