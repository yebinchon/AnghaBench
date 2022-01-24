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

/* Variables and functions */
 int CRYPT_S390_FUNC_MASK ; 
#define  CRYPT_S390_KIMD 133 
#define  CRYPT_S390_KLMD 132 
#define  CRYPT_S390_KM 131 
#define  CRYPT_S390_KMAC 130 
#define  CRYPT_S390_KMC 129 
#define  CRYPT_S390_KMCTR 128 
 unsigned int CRYPT_S390_MSA ; 
 unsigned int CRYPT_S390_MSA3 ; 
 unsigned int CRYPT_S390_MSA4 ; 
 int CRYPT_S390_OP_MASK ; 
 int /*<<< orphan*/  KIMD_QUERY ; 
 int /*<<< orphan*/  KLMD_QUERY ; 
 int /*<<< orphan*/  KMAC_QUERY ; 
 int /*<<< orphan*/  KMCTR_QUERY ; 
 int /*<<< orphan*/  KMC_QUERY ; 
 int /*<<< orphan*/  KM_QUERY ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long long FUNC6 () ; 
 scalar_t__ FUNC7 (unsigned long long*,int) ; 

__attribute__((used)) static inline int FUNC8(int func,
					unsigned int facility_mask)
{
	unsigned long long facility_bits[2];
	unsigned char status[16];
	int ret;

	if (facility_mask & CRYPT_S390_MSA &&
	    !(FUNC6() & 1ULL << (31 - 17)))
		return 0;

	if (facility_mask & CRYPT_S390_MSA3 ||
	    facility_mask & CRYPT_S390_MSA4)
		if (FUNC7(facility_bits, 2) <= 0)
			return 0;

	if (facility_mask & CRYPT_S390_MSA3 &&
	    !(facility_bits[1] & (1ULL << (63 - (76 - 64)))))
		return 0;
	if (facility_mask & CRYPT_S390_MSA4 &&
	    !(facility_bits[1] & (1ULL << (63 - (77 - 64)))))
		return 0;

	switch (func & CRYPT_S390_OP_MASK) {
	case CRYPT_S390_KM:
		ret = FUNC2(KM_QUERY, &status, NULL, NULL, 0);
		break;
	case CRYPT_S390_KMC:
		ret = FUNC4(KMC_QUERY, &status, NULL, NULL, 0);
		break;
	case CRYPT_S390_KIMD:
		ret = FUNC0(KIMD_QUERY, &status, NULL, 0);
		break;
	case CRYPT_S390_KLMD:
		ret = FUNC1(KLMD_QUERY, &status, NULL, 0);
		break;
	case CRYPT_S390_KMAC:
		ret = FUNC3(KMAC_QUERY, &status, NULL, 0);
		break;
	case CRYPT_S390_KMCTR:
		ret = FUNC5(KMCTR_QUERY, &status, NULL, NULL, 0,
				       NULL);
		break;
	default:
		return 0;
	}
	if (ret < 0)
		return 0;
	func &= CRYPT_S390_FUNC_MASK;
	func &= 0x7f;		/* mask modifier bit */
	return (status[func >> 3] & (0x80 >> (func & 7))) != 0;
}