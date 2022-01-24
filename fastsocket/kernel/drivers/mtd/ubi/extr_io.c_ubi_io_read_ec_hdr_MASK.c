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
typedef  scalar_t__ uint32_t ;
struct ubi_ec_hdr {int /*<<< orphan*/  hdr_crc; int /*<<< orphan*/  magic; } ;
struct ubi_device {int peb_count; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 scalar_t__ UBI_EC_HDR_MAGIC ; 
 int /*<<< orphan*/  UBI_EC_HDR_SIZE ; 
 int /*<<< orphan*/  UBI_EC_HDR_SIZE_CRC ; 
 int UBI_IO_BAD_EC_HDR ; 
 int UBI_IO_BITFLIPS ; 
 scalar_t__ UBI_IO_DEBUG ; 
 int UBI_IO_PEB_EMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ubi_ec_hdr*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_ec_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (struct ubi_device*,struct ubi_ec_hdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int FUNC10 (struct ubi_device*,struct ubi_ec_hdr*) ; 

int FUNC11(struct ubi_device *ubi, int pnum,
		       struct ubi_ec_hdr *ec_hdr, int verbose)
{
	int err, read_err = 0;
	uint32_t crc, magic, hdr_crc;

	FUNC3("read EC header from PEB %d", pnum);
	FUNC5(pnum >= 0 && pnum < ubi->peb_count);

	err = FUNC8(ubi, ec_hdr, pnum, 0, UBI_EC_HDR_SIZE);
	if (err) {
		if (err != UBI_IO_BITFLIPS && err != -EBADMSG)
			return err;

		/*
		 * We read all the data, but either a correctable bit-flip
		 * occurred, or MTD reported about some data integrity error,
		 * like an ECC error in case of NAND. The former is harmless,
		 * the later may mean that the read data is corrupted. But we
		 * have a CRC check-sum and we will detect this. If the EC
		 * header is still OK, we just report this as there was a
		 * bit-flip.
		 */
		read_err = err;
	}

	magic = FUNC0(ec_hdr->magic);
	if (magic != UBI_EC_HDR_MAGIC) {
		/*
		 * The magic field is wrong. Let's check if we have read all
		 * 0xFF. If yes, this physical eraseblock is assumed to be
		 * empty.
		 *
		 * But if there was a read error, we do not test it for all
		 * 0xFFs. Even if it does contain all 0xFFs, this error
		 * indicates that something is still wrong with this physical
		 * eraseblock and we anyway cannot treat it as empty.
		 */
		if (read_err != -EBADMSG &&
		    FUNC1(ec_hdr, 0xFF, UBI_EC_HDR_SIZE)) {
			/* The physical eraseblock is supposedly empty */
			if (verbose)
				FUNC9("no EC header found at PEB %d, "
					 "only 0xFF bytes", pnum);
			else if (UBI_IO_DEBUG)
				FUNC4("no EC header found at PEB %d, "
					"only 0xFF bytes", pnum);
			return UBI_IO_PEB_EMPTY;
		}

		/*
		 * This is not a valid erase counter header, and these are not
		 * 0xFF bytes. Report that the header is corrupted.
		 */
		if (verbose) {
			FUNC9("bad magic number at PEB %d: %08x instead of "
				 "%08x", pnum, magic, UBI_EC_HDR_MAGIC);
			FUNC6(ec_hdr);
		} else if (UBI_IO_DEBUG)
			FUNC4("bad magic number at PEB %d: %08x instead of "
				"%08x", pnum, magic, UBI_EC_HDR_MAGIC);
		return UBI_IO_BAD_EC_HDR;
	}

	crc = FUNC2(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
	hdr_crc = FUNC0(ec_hdr->hdr_crc);

	if (hdr_crc != crc) {
		if (verbose) {
			FUNC9("bad EC header CRC at PEB %d, calculated "
				 "%#08x, read %#08x", pnum, crc, hdr_crc);
			FUNC6(ec_hdr);
		} else if (UBI_IO_DEBUG)
			FUNC4("bad EC header CRC at PEB %d, calculated "
				"%#08x, read %#08x", pnum, crc, hdr_crc);
		return UBI_IO_BAD_EC_HDR;
	}

	/* And of course validate what has just been read from the media */
	err = FUNC10(ubi, ec_hdr);
	if (err) {
		FUNC7("validation failed for PEB %d", pnum);
		return -EINVAL;
	}

	return read_err ? UBI_IO_BITFLIPS : 0;
}