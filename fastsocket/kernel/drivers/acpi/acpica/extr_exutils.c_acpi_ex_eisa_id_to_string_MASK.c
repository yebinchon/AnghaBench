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
typedef  int u32 ;
typedef  scalar_t__ acpi_integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int FUNC3 (int) ; 
 char FUNC4 (scalar_t__,int) ; 

void FUNC5(char *out_string, acpi_integer compressed_id)
{
	u32 swapped_id;

	FUNC1();

	/* The EISAID should be a 32-bit integer */

	if (compressed_id > ACPI_UINT32_MAX) {
		FUNC2((AE_INFO,
			      "Expected EISAID is larger than 32 bits: 0x%8.8X%8.8X, truncating",
			      FUNC0(compressed_id)));
	}

	/* Swap ID to big-endian to get contiguous bits */

	swapped_id = FUNC3((u32)compressed_id);

	/* First 3 bytes are uppercase letters. Next 4 bytes are hexadecimal */

	out_string[0] =
	    (char)(0x40 + (((unsigned long)swapped_id >> 26) & 0x1F));
	out_string[1] = (char)(0x40 + ((swapped_id >> 21) & 0x1F));
	out_string[2] = (char)(0x40 + ((swapped_id >> 16) & 0x1F));
	out_string[3] = FUNC4((acpi_integer)swapped_id, 12);
	out_string[4] = FUNC4((acpi_integer)swapped_id, 8);
	out_string[5] = FUNC4((acpi_integer)swapped_id, 4);
	out_string[6] = FUNC4((acpi_integer)swapped_id, 0);
	out_string[7] = 0;
}