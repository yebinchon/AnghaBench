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
typedef  int /*<<< orphan*/  uint32_t ;
struct ubi_vtbl_record {int /*<<< orphan*/  crc; } ;
struct ubi_volume {int dummy; } ;
struct ubi_device {int vtbl_slots; int /*<<< orphan*/  vtbl_size; int /*<<< orphan*/ * vtbl; struct ubi_volume** volumes; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_LAYOUT_VOLUME_EBS ; 
 int /*<<< orphan*/  UBI_LAYOUT_VOLUME_ID ; 
 int /*<<< orphan*/  UBI_LONGTERM ; 
 int /*<<< orphan*/  UBI_VTBL_RECORD_SIZE_CRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ubi_vtbl_record*,int /*<<< orphan*/ ) ; 
 struct ubi_vtbl_record empty_vtbl_record ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ubi_vtbl_record*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ubi_device*,struct ubi_volume*,int) ; 
 int FUNC6 (struct ubi_device*,struct ubi_volume*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (struct ubi_device*,int /*<<< orphan*/ ) ; 

int FUNC8(struct ubi_device *ubi, int idx,
			   struct ubi_vtbl_record *vtbl_rec)
{
	int i, err;
	uint32_t crc;
	struct ubi_volume *layout_vol;

	FUNC4(idx >= 0 && idx < ubi->vtbl_slots);
	layout_vol = ubi->volumes[FUNC7(ubi, UBI_LAYOUT_VOLUME_ID)];

	if (!vtbl_rec)
		vtbl_rec = &empty_vtbl_record;
	else {
		crc = FUNC1(UBI_CRC32_INIT, vtbl_rec, UBI_VTBL_RECORD_SIZE_CRC);
		vtbl_rec->crc = FUNC0(crc);
	}

	FUNC2(&ubi->vtbl[idx], vtbl_rec, sizeof(struct ubi_vtbl_record));
	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
		err = FUNC5(ubi, layout_vol, i);
		if (err)
			return err;

		err = FUNC6(ubi, layout_vol, i, ubi->vtbl, 0,
					ubi->vtbl_size, UBI_LONGTERM);
		if (err)
			return err;
	}

	FUNC3(ubi);
	return 0;
}