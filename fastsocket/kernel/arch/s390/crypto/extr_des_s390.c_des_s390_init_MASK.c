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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int CRYPT_S390_MSA ; 
 int CRYPT_S390_MSA4 ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KMCTR_DEA_ENCRYPT ; 
 int /*<<< orphan*/  KMCTR_TDEA_192_ENCRYPT ; 
 int /*<<< orphan*/  KM_DEA_ENCRYPT ; 
 int /*<<< orphan*/  KM_TDEA_128_ENCRYPT ; 
 int /*<<< orphan*/  KM_TDEA_192_ENCRYPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cbc_des3_128_alg ; 
 int /*<<< orphan*/  cbc_des3_192_alg ; 
 int /*<<< orphan*/  cbc_des_alg ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctr_des3_alg ; 
 int /*<<< orphan*/  ctr_des_alg ; 
 int /*<<< orphan*/ * ctrblk ; 
 int /*<<< orphan*/  des3_128_alg ; 
 int /*<<< orphan*/  des3_192_alg ; 
 int /*<<< orphan*/  des_alg ; 
 int /*<<< orphan*/  ecb_des3_128_alg ; 
 int /*<<< orphan*/  ecb_des3_192_alg ; 
 int /*<<< orphan*/  ecb_des_alg ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret = 0;

	if (!FUNC1(KM_DEA_ENCRYPT, CRYPT_S390_MSA) ||
	    !FUNC1(KM_TDEA_128_ENCRYPT, CRYPT_S390_MSA) ||
	    !FUNC1(KM_TDEA_192_ENCRYPT, CRYPT_S390_MSA))
		return -EOPNOTSUPP;

	ret = FUNC2(&des_alg);
	if (ret)
		goto des_err;
	ret = FUNC2(&ecb_des_alg);
	if (ret)
		goto ecb_des_err;
	ret = FUNC2(&cbc_des_alg);
	if (ret)
		goto cbc_des_err;

	ret = FUNC2(&des3_128_alg);
	if (ret)
		goto des3_128_err;
	ret = FUNC2(&ecb_des3_128_alg);
	if (ret)
		goto ecb_des3_128_err;
	ret = FUNC2(&cbc_des3_128_alg);
	if (ret)
		goto cbc_des3_128_err;

	ret = FUNC2(&des3_192_alg);
	if (ret)
		goto des3_192_err;
	ret = FUNC2(&ecb_des3_192_alg);
	if (ret)
		goto ecb_des3_192_err;
	ret = FUNC2(&cbc_des3_192_alg);
	if (ret)
		goto cbc_des3_192_err;

	if (FUNC1(KMCTR_DEA_ENCRYPT,
			CRYPT_S390_MSA | CRYPT_S390_MSA4) &&
	    FUNC1(KMCTR_TDEA_192_ENCRYPT,
			CRYPT_S390_MSA | CRYPT_S390_MSA4)) {
		ret = FUNC2(&ctr_des_alg);
		if (ret)
			goto ctr_des_err;
		ret = FUNC2(&ctr_des3_alg);
		if (ret)
			goto ctr_des3_err;
		ctrblk = (u8 *) FUNC0(GFP_KERNEL);
		if (!ctrblk) {
			ret = -ENOMEM;
			goto ctr_mem_err;
		}
	}

out:
	return ret;

ctr_mem_err:
	FUNC3(&ctr_des3_alg);
ctr_des3_err:
	FUNC3(&ctr_des_alg);
ctr_des_err:
	FUNC3(&cbc_des3_192_alg);
cbc_des3_192_err:
	FUNC3(&ecb_des3_192_alg);
ecb_des3_192_err:
	FUNC3(&des3_192_alg);
des3_192_err:
	FUNC3(&cbc_des3_128_alg);
cbc_des3_128_err:
	FUNC3(&ecb_des3_128_alg);
ecb_des3_128_err:
	FUNC3(&des3_128_alg);
des3_128_err:
	FUNC3(&cbc_des_alg);
cbc_des_err:
	FUNC3(&ecb_des_alg);
ecb_des_err:
	FUNC3(&des_alg);
des_err:
	goto out;
}