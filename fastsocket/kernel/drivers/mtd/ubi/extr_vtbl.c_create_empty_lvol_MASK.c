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
struct ubi_vtbl_record {int dummy; } ;
struct ubi_scan_info {int dummy; } ;
struct ubi_device {int vtbl_slots; int /*<<< orphan*/  vtbl_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ubi_vtbl_record* FUNC0 (int) ; 
 int UBI_LAYOUT_VOLUME_EBS ; 
 int /*<<< orphan*/  UBI_VTBL_RECORD_SIZE ; 
 int FUNC1 (struct ubi_device*,struct ubi_scan_info*,int,struct ubi_vtbl_record*) ; 
 int /*<<< orphan*/  empty_vtbl_record ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_vtbl_record*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_vtbl_record*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_vtbl_record*) ; 
 struct ubi_vtbl_record* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ubi_vtbl_record *FUNC6(struct ubi_device *ubi,
						 struct ubi_scan_info *si)
{
	int i;
	struct ubi_vtbl_record *vtbl;

	vtbl = FUNC5(ubi->vtbl_size);
	if (!vtbl)
		return FUNC0(-ENOMEM);
	FUNC3(vtbl, 0, ubi->vtbl_size);

	for (i = 0; i < ubi->vtbl_slots; i++)
		FUNC2(&vtbl[i], &empty_vtbl_record, UBI_VTBL_RECORD_SIZE);

	for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
		int err;

		err = FUNC1(ubi, si, i, vtbl);
		if (err) {
			FUNC4(vtbl);
			return FUNC0(err);
		}
	}

	return vtbl;
}