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
struct ubi_vid_hdr {int vol_type; int /*<<< orphan*/  data_pad; int /*<<< orphan*/  used_ebs; int /*<<< orphan*/  vol_id; } ;
struct ubi_scan_volume {scalar_t__ leb_count; int vol_id; scalar_t__ vol_type; int used_ebs; int data_pad; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UBI_STATIC_VOLUME ; 
 int UBI_VID_DYNAMIC ; 
 int UBI_VID_STATIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_scan_volume const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_vid_hdr const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(const struct ubi_vid_hdr *vid_hdr,
			    const struct ubi_scan_volume *sv, int pnum)
{
	int vol_type = vid_hdr->vol_type;
	int vol_id = FUNC0(vid_hdr->vol_id);
	int used_ebs = FUNC0(vid_hdr->used_ebs);
	int data_pad = FUNC0(vid_hdr->data_pad);

	if (sv->leb_count != 0) {
		int sv_vol_type;

		/*
		 * This is not the first logical eraseblock belonging to this
		 * volume. Ensure that the data in its VID header is consistent
		 * to the data in previous logical eraseblock headers.
		 */

		if (vol_id != sv->vol_id) {
			FUNC1("inconsistent vol_id");
			goto bad;
		}

		if (sv->vol_type == UBI_STATIC_VOLUME)
			sv_vol_type = UBI_VID_STATIC;
		else
			sv_vol_type = UBI_VID_DYNAMIC;

		if (vol_type != sv_vol_type) {
			FUNC1("inconsistent vol_type");
			goto bad;
		}

		if (used_ebs != sv->used_ebs) {
			FUNC1("inconsistent used_ebs");
			goto bad;
		}

		if (data_pad != sv->data_pad) {
			FUNC1("inconsistent data_pad");
			goto bad;
		}
	}

	return 0;

bad:
	FUNC4("inconsistent VID header at PEB %d", pnum);
	FUNC3(vid_hdr);
	FUNC2(sv);
	return -EINVAL;
}