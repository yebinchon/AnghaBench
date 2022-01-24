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
typedef  scalar_t__ u64 ;
struct apei_exec_context {scalar_t__ value; int ip; } ;
struct acpi_whea_header {int dummy; } ;

/* Variables and functions */
 int APEI_EXEC_SET_IP ; 
 int FUNC0 (struct acpi_whea_header*,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(
	struct apei_exec_context *ctx,
	struct acpi_whea_header *entry)
{
	int rc;
	u64 val;

	rc = FUNC0(entry, &val);
	if (rc)
		return rc;
	if (val == ctx->value) {
		ctx->ip += 2;
		return APEI_EXEC_SET_IP;
	}

	return 0;
}