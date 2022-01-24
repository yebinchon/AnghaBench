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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int txrxMask; } ;
struct ar9300_eeprom {TYPE_1__ baseEepHeader; } ;
typedef  int /*<<< orphan*/  (* eeprom_read_op ) (struct ath_hw*,int,int*,int) ;

/* Variables and functions */
 int AR9300_BASE_ADDR ; 
 int AR9300_BASE_ADDR_4K ; 
 int AR9300_BASE_ADDR_512 ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int COMP_CKSUM_LEN ; 
 int COMP_HDR_LEN ; 
 int /*<<< orphan*/  EEPROM ; 
 int EEPROM_DATA_LEN_9485 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MSTATE ; 
 scalar_t__ FUNC2 (struct ath_hw*,int /*<<< orphan*/  (*) (struct ath_hw*,int,int*,int),int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int,int,int,int*,int*,int,int) ; 
 int /*<<< orphan*/  ar9300_default ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int,int*,int) ; 
 struct ath_common* FUNC10 (struct ath_hw*) ; 
 scalar_t__ FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 
 int* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC17(struct ath_hw *ah,
					  u8 *mptr, int mdata_size)
{
#define MDEFAULT 15
#define MSTATE 100
	int cptr;
	u8 *word;
	int code;
	int reference, length, major, minor;
	int osize;
	int it;
	u16 checksum, mchecksum;
	struct ath_common *common = FUNC10(ah);
	struct ar9300_eeprom *eep;
	eeprom_read_op read;

	if (FUNC11(ah)) {
		u8 txrx;

		FUNC7(ah, mptr, mdata_size);

		/* check if eeprom contains valid data */
		eep = (struct ar9300_eeprom *) mptr;
		txrx = eep->baseEepHeader.txrxMask;
		if (txrx != 0 && txrx != 0xff)
			return 0;
	}

	word = FUNC15(2048, GFP_KERNEL);
	if (!word)
		return -ENOMEM;

	FUNC16(mptr, &ar9300_default, mdata_size);

	read = ar9300_read_eeprom;
	if (FUNC1(ah))
		cptr = AR9300_BASE_ADDR_4K;
	else if (FUNC0(ah))
		cptr = AR9300_BASE_ADDR_512;
	else
		cptr = AR9300_BASE_ADDR;
	FUNC12(common, EEPROM, "Trying EEPROM access at Address 0x%04x\n",
		cptr);
	if (FUNC2(ah, read, cptr))
		goto found;

	cptr = AR9300_BASE_ADDR_512;
	FUNC12(common, EEPROM, "Trying EEPROM access at Address 0x%04x\n",
		cptr);
	if (FUNC2(ah, read, cptr))
		goto found;

	read = ar9300_read_otp;
	cptr = AR9300_BASE_ADDR;
	FUNC12(common, EEPROM, "Trying OTP access at Address 0x%04x\n", cptr);
	if (FUNC2(ah, read, cptr))
		goto found;

	cptr = AR9300_BASE_ADDR_512;
	FUNC12(common, EEPROM, "Trying OTP access at Address 0x%04x\n", cptr);
	if (FUNC2(ah, read, cptr))
		goto found;

	goto fail;

found:
	FUNC12(common, EEPROM, "Found valid EEPROM data\n");

	for (it = 0; it < MSTATE; it++) {
		if (!read(ah, cptr, word, COMP_HDR_LEN))
			goto fail;

		if (!FUNC3(word))
			break;

		FUNC5(word, &code, &reference,
				       &length, &major, &minor);
		FUNC12(common, EEPROM,
			"Found block at %x: code=%d ref=%d length=%d major=%d minor=%d\n",
			cptr, code, reference, length, major, minor);
		if ((!FUNC1(ah) && length >= 1024) ||
		    (FUNC1(ah) && length > EEPROM_DATA_LEN_9485)) {
			FUNC12(common, EEPROM, "Skipping bad header\n");
			cptr -= COMP_HDR_LEN;
			continue;
		}

		osize = length;
		read(ah, cptr, word, COMP_HDR_LEN + osize + COMP_CKSUM_LEN);
		checksum = FUNC4(&word[COMP_HDR_LEN], length);
		mchecksum = FUNC13(&word[COMP_HDR_LEN + osize]);
		FUNC12(common, EEPROM, "checksum %x %x\n",
			checksum, mchecksum);
		if (checksum == mchecksum) {
			FUNC6(ah, it, code, reference, mptr,
						 word, length, mdata_size);
		} else {
			FUNC12(common, EEPROM,
				"skipping block with bad checksum\n");
		}
		cptr -= (COMP_HDR_LEN + osize + COMP_CKSUM_LEN);
	}

	FUNC14(word);
	return cptr;

fail:
	FUNC14(word);
	return -1;
}