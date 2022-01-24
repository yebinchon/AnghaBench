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
struct ubi_ec_hdr {void* hdr_crc; void* image_seq; void* data_offset; void* vid_hdr_offset; int /*<<< orphan*/  version; void* magic; } ;
struct ubi_device {int peb_count; int /*<<< orphan*/  ec_hdr_alsize; int /*<<< orphan*/  image_seq; int /*<<< orphan*/  leb_start; int /*<<< orphan*/  vid_hdr_offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int /*<<< orphan*/  UBI_EC_HDR_MAGIC ; 
 int /*<<< orphan*/  UBI_EC_HDR_SIZE_CRC ; 
 int /*<<< orphan*/  UBI_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct ubi_device*,int,struct ubi_ec_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ubi_device*,struct ubi_ec_hdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct ubi_device *ubi, int pnum,
			struct ubi_ec_hdr *ec_hdr)
{
	int err;
	uint32_t crc;

	FUNC2("write EC header to PEB %d", pnum);
	FUNC4(pnum >= 0 &&  pnum < ubi->peb_count);

	ec_hdr->magic = FUNC0(UBI_EC_HDR_MAGIC);
	ec_hdr->version = UBI_VERSION;
	ec_hdr->vid_hdr_offset = FUNC0(ubi->vid_hdr_offset);
	ec_hdr->data_offset = FUNC0(ubi->leb_start);
	ec_hdr->image_seq = FUNC0(ubi->image_seq);
	crc = FUNC1(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
	ec_hdr->hdr_crc = FUNC0(crc);

	err = FUNC3(ubi, pnum, ec_hdr);
	if (err)
		return -EINVAL;

	err = FUNC5(ubi, ec_hdr, pnum, 0, ubi->ec_hdr_alsize);
	return err;
}