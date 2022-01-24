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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_owner_id ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_MTX_CACHES ; 
 int /*<<< orphan*/  AE_INFO ; 
 size_t* acpi_gbl_owner_id_mask ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  ut_release_owner_id ; 

void FUNC7(acpi_owner_id * owner_id_ptr)
{
	acpi_owner_id owner_id = *owner_id_ptr;
	acpi_status status;
	u32 index;
	u32 bit;

	FUNC3(ut_release_owner_id, owner_id);

	/* Always clear the input owner_id (zero is an invalid ID) */

	*owner_id_ptr = 0;

	/* Zero is not a valid owner_iD */

	if (owner_id == 0) {
		FUNC1((AE_INFO, "Invalid OwnerId: %2.2X", owner_id));
		return_VOID;
	}

	/* Mutex for the global ID mask */

	status = FUNC5(ACPI_MTX_CACHES);
	if (FUNC2(status)) {
		return_VOID;
	}

	/* Normalize the ID to zero */

	owner_id--;

	/* Decode ID to index/offset pair */

	index = FUNC0(owner_id);
	bit = 1 << FUNC4(owner_id);

	/* Free the owner ID only if it is valid */

	if (acpi_gbl_owner_id_mask[index] & bit) {
		acpi_gbl_owner_id_mask[index] ^= bit;
	} else {
		FUNC1((AE_INFO,
			    "Release of non-allocated OwnerId: %2.2X",
			    owner_id + 1));
	}

	(void)FUNC6(ACPI_MTX_CACHES);
	return_VOID;
}