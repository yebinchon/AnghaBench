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
struct ubi_device {int vid_hdr_offset; int peb_size; int peb_count; int bad_allowed; int nor_flash; int min_io_size; int hdrs_min_io_size; int ec_hdr_alsize; int vid_hdr_alsize; int vid_hdr_aloffset; int vid_hdr_shift; int leb_start; int max_erroneous; int ro_mode; int leb_size; TYPE_1__* mtd; int /*<<< orphan*/  flash_size; } ;
struct TYPE_2__ {scalar_t__ numeraseregions; int erasesize; scalar_t__ type; int writesize; int subpage_sft; int flags; int index; scalar_t__ block_markbad; scalar_t__ block_isbad; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int EINVAL ; 
 scalar_t__ MTD_NORFLASH ; 
 int MTD_WRITEABLE ; 
 int UBI_EC_HDR_SIZE ; 
 int UBI_VID_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct ubi_device *ubi)
{
	if (ubi->mtd->numeraseregions != 0) {
		/*
		 * Some flashes have several erase regions. Different regions
		 * may have different eraseblock size and other
		 * characteristics. It looks like mostly multi-region flashes
		 * have one "main" region and one or more small regions to
		 * store boot loader code or boot parameters or whatever. I
		 * guess we should just pick the largest region. But this is
		 * not implemented.
		 */
		FUNC5("multiple regions, not implemented");
		return -EINVAL;
	}

	if (ubi->vid_hdr_offset < 0)
		return -EINVAL;

	/*
	 * Note, in this implementation we support MTD devices with 0x7FFFFFFF
	 * physical eraseblocks maximum.
	 */

	ubi->peb_size   = ubi->mtd->erasesize;
	ubi->peb_count  = FUNC3(ubi->mtd->size, ubi->mtd);
	ubi->flash_size = ubi->mtd->size;

	if (ubi->mtd->block_isbad && ubi->mtd->block_markbad)
		ubi->bad_allowed = 1;

	if (ubi->mtd->type == MTD_NORFLASH) {
		FUNC4(ubi->mtd->writesize == 1);
		ubi->nor_flash = 1;
	}

	ubi->min_io_size = ubi->mtd->writesize;
	ubi->hdrs_min_io_size = ubi->mtd->writesize >> ubi->mtd->subpage_sft;

	/*
	 * Make sure minimal I/O unit is power of 2. Note, there is no
	 * fundamental reason for this assumption. It is just an optimization
	 * which allows us to avoid costly division operations.
	 */
	if (!FUNC2(ubi->min_io_size)) {
		FUNC5("min. I/O unit (%d) is not power of 2",
			ubi->min_io_size);
		return -EINVAL;
	}

	FUNC4(ubi->hdrs_min_io_size > 0);
	FUNC4(ubi->hdrs_min_io_size <= ubi->min_io_size);
	FUNC4(ubi->min_io_size % ubi->hdrs_min_io_size == 0);

	/* Calculate default aligned sizes of EC and VID headers */
	ubi->ec_hdr_alsize = FUNC0(UBI_EC_HDR_SIZE, ubi->hdrs_min_io_size);
	ubi->vid_hdr_alsize = FUNC0(UBI_VID_HDR_SIZE, ubi->hdrs_min_io_size);

	FUNC1("min_io_size      %d", ubi->min_io_size);
	FUNC1("hdrs_min_io_size %d", ubi->hdrs_min_io_size);
	FUNC1("ec_hdr_alsize    %d", ubi->ec_hdr_alsize);
	FUNC1("vid_hdr_alsize   %d", ubi->vid_hdr_alsize);

	if (ubi->vid_hdr_offset == 0)
		/* Default offset */
		ubi->vid_hdr_offset = ubi->vid_hdr_aloffset =
				      ubi->ec_hdr_alsize;
	else {
		ubi->vid_hdr_aloffset = ubi->vid_hdr_offset &
						~(ubi->hdrs_min_io_size - 1);
		ubi->vid_hdr_shift = ubi->vid_hdr_offset -
						ubi->vid_hdr_aloffset;
	}

	/* Similar for the data offset */
	ubi->leb_start = ubi->vid_hdr_offset + UBI_EC_HDR_SIZE;
	ubi->leb_start = FUNC0(ubi->leb_start, ubi->min_io_size);

	FUNC1("vid_hdr_offset   %d", ubi->vid_hdr_offset);
	FUNC1("vid_hdr_aloffset %d", ubi->vid_hdr_aloffset);
	FUNC1("vid_hdr_shift    %d", ubi->vid_hdr_shift);
	FUNC1("leb_start        %d", ubi->leb_start);

	/* The shift must be aligned to 32-bit boundary */
	if (ubi->vid_hdr_shift % 4) {
		FUNC5("unaligned VID header shift %d",
			ubi->vid_hdr_shift);
		return -EINVAL;
	}

	/* Check sanity */
	if (ubi->vid_hdr_offset < UBI_EC_HDR_SIZE ||
	    ubi->leb_start < ubi->vid_hdr_offset + UBI_VID_HDR_SIZE ||
	    ubi->leb_start > ubi->peb_size - UBI_VID_HDR_SIZE ||
	    ubi->leb_start & (ubi->min_io_size - 1)) {
		FUNC5("bad VID header (%d) or data offsets (%d)",
			ubi->vid_hdr_offset, ubi->leb_start);
		return -EINVAL;
	}

	/*
	 * Set maximum amount of physical erroneous eraseblocks to be 10%.
	 * Erroneous PEB are those which have read errors.
	 */
	ubi->max_erroneous = ubi->peb_count / 10;
	if (ubi->max_erroneous < 16)
		ubi->max_erroneous = 16;
	FUNC1("max_erroneous    %d", ubi->max_erroneous);

	/*
	 * It may happen that EC and VID headers are situated in one minimal
	 * I/O unit. In this case we can only accept this UBI image in
	 * read-only mode.
	 */
	if (ubi->vid_hdr_offset + UBI_VID_HDR_SIZE <= ubi->hdrs_min_io_size) {
		FUNC7("EC and VID headers are in the same minimal I/O unit, "
			 "switch to read-only mode");
		ubi->ro_mode = 1;
	}

	ubi->leb_size = ubi->peb_size - ubi->leb_start;

	if (!(ubi->mtd->flags & MTD_WRITEABLE)) {
		FUNC6("MTD device %d is write-protected, attach in "
			"read-only mode", ubi->mtd->index);
		ubi->ro_mode = 1;
	}

	FUNC6("physical eraseblock size:   %d bytes (%d KiB)",
		ubi->peb_size, ubi->peb_size >> 10);
	FUNC6("logical eraseblock size:    %d bytes", ubi->leb_size);
	FUNC6("smallest flash I/O unit:    %d", ubi->min_io_size);
	if (ubi->hdrs_min_io_size != ubi->min_io_size)
		FUNC6("sub-page size:              %d",
			ubi->hdrs_min_io_size);
	FUNC6("VID header offset:          %d (aligned %d)",
		ubi->vid_hdr_offset, ubi->vid_hdr_aloffset);
	FUNC6("data offset:                %d", ubi->leb_start);

	/*
	 * Note, ideally, we have to initialize ubi->bad_peb_count here. But
	 * unfortunately, MTD does not provide this information. We should loop
	 * over all physical eraseblocks and invoke mtd->block_is_bad() for
	 * each physical eraseblock. So, we skip ubi->bad_peb_count
	 * uninitialized and initialize it after scanning.
	 */

	return 0;
}