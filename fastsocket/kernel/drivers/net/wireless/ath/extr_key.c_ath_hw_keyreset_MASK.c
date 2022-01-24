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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct ath_common {scalar_t__ keymax; int crypt_caps; void* ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  AR_KEYTABLE_TYPE_CLR ; 
 scalar_t__ AR_KEYTABLE_TYPE_TKIP ; 
 int ATH_CRYPT_CAP_MIC_COMBINED ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 scalar_t__ FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,char*,scalar_t__) ; 

bool FUNC13(struct ath_common *common, u16 entry)
{
	u32 keyType;
	void *ah = common->ah;

	if (entry >= common->keymax) {
		FUNC12(common, "keyreset: keycache entry %u out of range\n",
			entry);
		return false;
	}

	keyType = FUNC10(ah, FUNC7(entry));

	FUNC8(ah);

	FUNC11(ah, FUNC0(entry), 0);
	FUNC11(ah, FUNC1(entry), 0);
	FUNC11(ah, FUNC2(entry), 0);
	FUNC11(ah, FUNC3(entry), 0);
	FUNC11(ah, FUNC4(entry), 0);
	FUNC11(ah, FUNC7(entry), AR_KEYTABLE_TYPE_CLR);
	FUNC11(ah, FUNC5(entry), 0);
	FUNC11(ah, FUNC6(entry), 0);

	if (keyType == AR_KEYTABLE_TYPE_TKIP) {
		u16 micentry = entry + 64;

		FUNC11(ah, FUNC0(micentry), 0);
		FUNC11(ah, FUNC1(micentry), 0);
		FUNC11(ah, FUNC2(micentry), 0);
		FUNC11(ah, FUNC3(micentry), 0);
		if (common->crypt_caps & ATH_CRYPT_CAP_MIC_COMBINED) {
			FUNC11(ah, FUNC4(micentry), 0);
			FUNC11(ah, FUNC7(micentry),
				  AR_KEYTABLE_TYPE_CLR);
		}

	}

	FUNC9(ah);

	return true;
}