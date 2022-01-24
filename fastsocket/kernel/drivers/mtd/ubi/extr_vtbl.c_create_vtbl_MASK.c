#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubi_vid_hdr {int /*<<< orphan*/  sqnum; void* lnum; void* data_pad; void* used_ebs; void* data_size; int /*<<< orphan*/  compat; void* vol_id; int /*<<< orphan*/  vol_type; } ;
struct ubi_scan_volume {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ubi_scan_leb {TYPE_1__ u; int /*<<< orphan*/  ec; int /*<<< orphan*/  pnum; } ;
struct ubi_scan_info {int /*<<< orphan*/  corr; int /*<<< orphan*/  max_sqnum; } ;
struct ubi_device {int /*<<< orphan*/  vtbl_size; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ubi_scan_leb*) ; 
 int FUNC1 (struct ubi_scan_leb*) ; 
 int /*<<< orphan*/  UBI_LAYOUT_VOLUME_COMPAT ; 
 int UBI_LAYOUT_VOLUME_ID ; 
 int /*<<< orphan*/  UBI_VID_DYNAMIC ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_scan_leb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*,struct ubi_vid_hdr*) ; 
 int FUNC7 (struct ubi_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubi_device*,int /*<<< orphan*/ ,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (struct ubi_device*,struct ubi_scan_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ubi_vid_hdr*,int /*<<< orphan*/ ) ; 
 struct ubi_scan_leb* FUNC11 (struct ubi_scan_volume*,int) ; 
 struct ubi_scan_volume* FUNC12 (struct ubi_scan_info*,int) ; 
 struct ubi_scan_leb* FUNC13 (struct ubi_device*,struct ubi_scan_info*) ; 
 struct ubi_vid_hdr* FUNC14 (struct ubi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ubi_device *ubi, struct ubi_scan_info *si,
		       int copy, void *vtbl)
{
	int err, tries = 0;
	static struct ubi_vid_hdr *vid_hdr;
	struct ubi_scan_volume *sv;
	struct ubi_scan_leb *new_seb, *old_seb = NULL;

	FUNC9("create volume table (copy #%d)", copy + 1);

	vid_hdr = FUNC14(ubi, GFP_KERNEL);
	if (!vid_hdr)
		return -ENOMEM;

	/*
	 * Check if there is a logical eraseblock which would have to contain
	 * this volume table copy was found during scanning. It has to be wiped
	 * out.
	 */
	sv = FUNC12(si, UBI_LAYOUT_VOLUME_ID);
	if (sv)
		old_seb = FUNC11(sv, copy);

retry:
	new_seb = FUNC13(ubi, si);
	if (FUNC0(new_seb)) {
		err = FUNC1(new_seb);
		goto out_free;
	}

	vid_hdr->vol_type = UBI_VID_DYNAMIC;
	vid_hdr->vol_id = FUNC2(UBI_LAYOUT_VOLUME_ID);
	vid_hdr->compat = UBI_LAYOUT_VOLUME_COMPAT;
	vid_hdr->data_size = vid_hdr->used_ebs =
			     vid_hdr->data_pad = FUNC2(0);
	vid_hdr->lnum = FUNC2(copy);
	vid_hdr->sqnum = FUNC3(++si->max_sqnum);

	/* The EC header is already there, write the VID header */
	err = FUNC8(ubi, new_seb->pnum, vid_hdr);
	if (err)
		goto write_error;

	/* Write the layout volume contents */
	err = FUNC7(ubi, vtbl, new_seb->pnum, 0, ubi->vtbl_size);
	if (err)
		goto write_error;

	/*
	 * And add it to the scanning information. Don't delete the old
	 * @old_seb as it will be deleted and freed in 'ubi_scan_add_used()'.
	 */
	err = FUNC10(ubi, si, new_seb->pnum, new_seb->ec,
				vid_hdr, 0);
	FUNC4(new_seb);
	FUNC6(ubi, vid_hdr);
	return err;

write_error:
	if (err == -EIO && ++tries <= 5) {
		/*
		 * Probably this physical eraseblock went bad, try to pick
		 * another one.
		 */
		FUNC5(&new_seb->u.list, &si->corr);
		goto retry;
	}
	FUNC4(new_seb);
out_free:
	FUNC6(ubi, vid_hdr);
	return err;

}