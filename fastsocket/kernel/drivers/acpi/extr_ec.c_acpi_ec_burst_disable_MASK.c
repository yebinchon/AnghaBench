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
struct transaction {int /*<<< orphan*/  rlen; int /*<<< orphan*/  wlen; int /*<<< orphan*/ * rdata; int /*<<< orphan*/ * wdata; int /*<<< orphan*/  command; } ;
struct acpi_ec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EC_BURST_DISABLE ; 
 int ACPI_EC_FLAG_BURST ; 
 int FUNC0 (struct acpi_ec*) ; 
 int FUNC1 (struct acpi_ec*,struct transaction*) ; 

__attribute__((used)) static int FUNC2(struct acpi_ec *ec)
{
	struct transaction t = {.command = ACPI_EC_BURST_DISABLE,
				.wdata = NULL, .rdata = NULL,
				.wlen = 0, .rlen = 0};

	return (FUNC0(ec) & ACPI_EC_FLAG_BURST) ?
				FUNC1(ec, &t) : 0;
}