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
typedef  void* u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_owner_id ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_VALUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_CACHES ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ ACPI_NUM_OWNERID_MASKS ; 
 int ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_ALREADY_EXISTS ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OWNER_ID_LIMIT ; 
 scalar_t__ acpi_gbl_last_owner_id_index ; 
 scalar_t__ acpi_gbl_next_owner_id_offset ; 
 int* acpi_gbl_owner_id_mask ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_allocate_owner_id ; 

acpi_status FUNC8(acpi_owner_id * owner_id)
{
	u32 i;
	u32 j;
	u32 k;
	acpi_status status;

	FUNC3(ut_allocate_owner_id);

	/* Guard against multiple allocations of ID to the same location */

	if (*owner_id) {
		FUNC1((AE_INFO, "Owner ID [%2.2X] already exists",
			    *owner_id));
		FUNC7(AE_ALREADY_EXISTS);
	}

	/* Mutex for the global ID mask */

	status = FUNC5(ACPI_MTX_CACHES);
	if (FUNC2(status)) {
		FUNC7(status);
	}

	/*
	 * Find a free owner ID, cycle through all possible IDs on repeated
	 * allocations. (ACPI_NUM_OWNERID_MASKS + 1) because first index may have
	 * to be scanned twice.
	 */
	for (i = 0, j = acpi_gbl_last_owner_id_index;
	     i < (ACPI_NUM_OWNERID_MASKS + 1); i++, j++) {
		if (j >= ACPI_NUM_OWNERID_MASKS) {
			j = 0;	/* Wraparound to start of mask array */
		}

		for (k = acpi_gbl_next_owner_id_offset; k < 32; k++) {
			if (acpi_gbl_owner_id_mask[j] == ACPI_UINT32_MAX) {

				/* There are no free IDs in this mask */

				break;
			}

			if (!(acpi_gbl_owner_id_mask[j] & (1 << k))) {
				/*
				 * Found a free ID. The actual ID is the bit index plus one,
				 * making zero an invalid Owner ID. Save this as the last ID
				 * allocated and update the global ID mask.
				 */
				acpi_gbl_owner_id_mask[j] |= (1 << k);

				acpi_gbl_last_owner_id_index = (u8) j;
				acpi_gbl_next_owner_id_offset = (u8) (k + 1);

				/*
				 * Construct encoded ID from the index and bit position
				 *
				 * Note: Last [j].k (bit 255) is never used and is marked
				 * permanently allocated (prevents +1 overflow)
				 */
				*owner_id =
				    (acpi_owner_id) ((k + 1) + FUNC4(j));

				FUNC0((ACPI_DB_VALUES,
						  "Allocated OwnerId: %2.2X\n",
						  (unsigned int)*owner_id));
				goto exit;
			}
		}

		acpi_gbl_next_owner_id_offset = 0;
	}

	/*
	 * All owner_ids have been allocated. This typically should
	 * not happen since the IDs are reused after deallocation. The IDs are
	 * allocated upon table load (one per table) and method execution, and
	 * they are released when a table is unloaded or a method completes
	 * execution.
	 *
	 * If this error happens, there may be very deep nesting of invoked control
	 * methods, or there may be a bug where the IDs are not released.
	 */
	status = AE_OWNER_ID_LIMIT;
	FUNC1((AE_INFO,
		    "Could not allocate new OwnerId (255 max), AE_OWNER_ID_LIMIT"));

      exit:
	(void)FUNC6(ACPI_MTX_CACHES);
	FUNC7(status);
}