#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_9__ {int antCtrlCommon; int* antCtrlChain; TYPE_3__* spurChans; } ;
struct TYPE_7__ {scalar_t__ length; scalar_t__ checksum; scalar_t__ version; scalar_t__* regDmn; scalar_t__ rfSilent; scalar_t__ blueToothOptions; scalar_t__ deviceCap; } ;
struct ar5416_eeprom_4k {TYPE_4__ modalHeader; TYPE_2__ baseEepHeader; } ;
struct TYPE_6__ {struct ar5416_eeprom_4k map4k; } ;
struct ath_hw {TYPE_5__* eep_ops; TYPE_1__ eeprom; } ;
struct ath_common {int dummy; } ;
struct TYPE_10__ {scalar_t__ (* get_eeprom_rev ) (struct ath_hw*) ;int /*<<< orphan*/  (* get_eeprom_ver ) (struct ath_hw*) ;} ;
struct TYPE_8__ {scalar_t__ spurChan; } ;

/* Variables and functions */
 int AR5416_EEP4K_MAX_CHAINS ; 
 scalar_t__ AR5416_EEPROM_MAGIC ; 
 int /*<<< orphan*/  AR5416_EEPROM_MAGIC_OFFSET ; 
 scalar_t__ AR5416_EEP_NO_BACK_VER ; 
 int /*<<< orphan*/  AR5416_EEP_VER ; 
 int AR_EEPROM_MODAL_SPURS ; 
 int /*<<< orphan*/  EEPROM ; 
 int EEPROM_4K_SIZE ; 
 int EINVAL ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 void* FUNC8 (scalar_t__) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct ath_hw *ah)
{
#define EEPROM_4K_SIZE (sizeof(struct ar5416_eeprom_4k) / sizeof(u16))
	struct ath_common *common = FUNC0(ah);
	struct ar5416_eeprom_4k *eep = &ah->eeprom.map4k;
	u16 *eepdata, temp, magic, magic2;
	u32 sum = 0, el;
	bool need_swap = false;
	int i, addr;


	if (!FUNC2(ah)) {
		if (!FUNC1(ah, AR5416_EEPROM_MAGIC_OFFSET,
					 &magic)) {
			FUNC4(common, "Reading Magic # failed\n");
			return false;
		}

		FUNC3(common, EEPROM, "Read Magic = 0x%04X\n", magic);

		if (magic != AR5416_EEPROM_MAGIC) {
			magic2 = FUNC8(magic);

			if (magic2 == AR5416_EEPROM_MAGIC) {
				need_swap = true;
				eepdata = (u16 *) (&ah->eeprom);

				for (addr = 0; addr < EEPROM_4K_SIZE; addr++) {
					temp = FUNC8(*eepdata);
					*eepdata = temp;
					eepdata++;
				}
			} else {
				FUNC4(common,
					"Invalid EEPROM Magic. Endianness mismatch.\n");
				return -EINVAL;
			}
		}
	}

	FUNC3(common, EEPROM, "need_swap = %s\n",
		need_swap ? "True" : "False");

	if (need_swap)
		el = FUNC8(ah->eeprom.map4k.baseEepHeader.length);
	else
		el = ah->eeprom.map4k.baseEepHeader.length;

	if (el > sizeof(struct ar5416_eeprom_4k))
		el = sizeof(struct ar5416_eeprom_4k) / sizeof(u16);
	else
		el = el / sizeof(u16);

	eepdata = (u16 *)(&ah->eeprom);

	for (i = 0; i < el; i++)
		sum ^= *eepdata++;

	if (need_swap) {
		u32 integer;
		u16 word;

		FUNC3(common, EEPROM,
			"EEPROM Endianness is not native.. Changing\n");

		word = FUNC8(eep->baseEepHeader.length);
		eep->baseEepHeader.length = word;

		word = FUNC8(eep->baseEepHeader.checksum);
		eep->baseEepHeader.checksum = word;

		word = FUNC8(eep->baseEepHeader.version);
		eep->baseEepHeader.version = word;

		word = FUNC8(eep->baseEepHeader.regDmn[0]);
		eep->baseEepHeader.regDmn[0] = word;

		word = FUNC8(eep->baseEepHeader.regDmn[1]);
		eep->baseEepHeader.regDmn[1] = word;

		word = FUNC8(eep->baseEepHeader.rfSilent);
		eep->baseEepHeader.rfSilent = word;

		word = FUNC8(eep->baseEepHeader.blueToothOptions);
		eep->baseEepHeader.blueToothOptions = word;

		word = FUNC8(eep->baseEepHeader.deviceCap);
		eep->baseEepHeader.deviceCap = word;

		integer = FUNC9(eep->modalHeader.antCtrlCommon);
		eep->modalHeader.antCtrlCommon = integer;

		for (i = 0; i < AR5416_EEP4K_MAX_CHAINS; i++) {
			integer = FUNC9(eep->modalHeader.antCtrlChain[i]);
			eep->modalHeader.antCtrlChain[i] = integer;
		}

		for (i = 0; i < AR_EEPROM_MODAL_SPURS; i++) {
			word = FUNC8(eep->modalHeader.spurChans[i].spurChan);
			eep->modalHeader.spurChans[i].spurChan = word;
		}
	}

	if (sum != 0xffff || ah->eep_ops->get_eeprom_ver(ah) != AR5416_EEP_VER ||
	    ah->eep_ops->get_eeprom_rev(ah) < AR5416_EEP_NO_BACK_VER) {
		FUNC4(common, "Bad EEPROM checksum 0x%x or revision 0x%04x\n",
			sum, ah->eep_ops->get_eeprom_ver(ah));
		return -EINVAL;
	}

	return 0;
#undef EEPROM_4K_SIZE
}