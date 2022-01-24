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
struct transaction {int wlen; int /*<<< orphan*/  rlen; int /*<<< orphan*/ * rdata; int /*<<< orphan*/ * wdata; int /*<<< orphan*/  command; } ;
struct acpi_ec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EC_COMMAND_WRITE ; 
 int FUNC0 (struct acpi_ec*,struct transaction*) ; 

__attribute__((used)) static int FUNC1(struct acpi_ec *ec, u8 address, u8 data)
{
	u8 wdata[2] = { address, data };
	struct transaction t = {.command = ACPI_EC_COMMAND_WRITE,
				.wdata = wdata, .rdata = NULL,
				.wlen = 2, .rlen = 0};

	return FUNC0(ec, &t);
}