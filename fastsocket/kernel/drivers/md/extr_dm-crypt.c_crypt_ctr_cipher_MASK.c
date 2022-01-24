#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct dm_target {char* error; struct crypt_config* private; } ;
struct crypt_config {char* cipher_mode; TYPE_1__* iv_gen_ops; scalar_t__ iv_size; int /*<<< orphan*/  tfm; void* cipher; } ;
struct TYPE_6__ {int (* ctr ) (struct crypt_config*,struct dm_target*,char*) ;int (* init ) (struct crypt_config*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MAX_ALG_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ crypt_iv_benbi_ops ; 
 TYPE_1__ crypt_iv_essiv_ops ; 
 TYPE_1__ crypt_iv_null_ops ; 
 TYPE_1__ crypt_iv_plain64_ops ; 
 TYPE_1__ crypt_iv_plain_ops ; 
 int FUNC3 (struct crypt_config*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,unsigned int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 char* FUNC13 (char**,char*) ; 
 int FUNC14 (struct crypt_config*,struct dm_target*,char*) ; 
 int FUNC15 (struct crypt_config*) ; 

__attribute__((used)) static int FUNC16(struct dm_target *ti,
			    char *cipher_in, char *key)
{
	struct crypt_config *cc = ti->private;
	char *tmp, *cipher, *chainmode, *ivmode, *ivopts;
	char *cipher_api = NULL;
	int ret = -EINVAL;

	/* Convert to crypto api definition? */
	if (FUNC11(cipher_in, '(')) {
		ti->error = "Bad cipher specification";
		return -EINVAL;
	}

	/*
	 * Legacy dm-crypt cipher specification
	 * cipher-mode-iv:ivopts
	 */
	tmp = cipher_in;
	cipher = FUNC13(&tmp, "-");

	cc->cipher = FUNC8(cipher, GFP_KERNEL);
	if (!cc->cipher)
		goto bad_mem;

	if (tmp) {
		cc->cipher_mode = FUNC8(tmp, GFP_KERNEL);
		if (!cc->cipher_mode)
			goto bad_mem;
	}

	chainmode = FUNC13(&tmp, "-");
	ivopts = FUNC13(&tmp, "-");
	ivmode = FUNC13(&ivopts, ":");

	if (tmp)
		FUNC0("Ignoring unexpected additional cipher options");

	/* Compatibility mode for old dm-crypt mappings */
	if (!chainmode || (!FUNC12(chainmode, "plain") && !ivmode)) {
		FUNC6(cc->cipher_mode);
		cc->cipher_mode = FUNC8("cbc-plain", GFP_KERNEL);
		chainmode = "cbc";
		ivmode = "plain";
	}

	if (FUNC12(chainmode, "ecb") && !ivmode) {
		ti->error = "IV mechanism required";
		return -EINVAL;
	}

	cipher_api = FUNC7(CRYPTO_MAX_ALG_NAME, GFP_KERNEL);
	if (!cipher_api)
		goto bad_mem;

	ret = FUNC10(cipher_api, CRYPTO_MAX_ALG_NAME,
		       "%s(%s)", chainmode, cipher);
	if (ret < 0) {
		FUNC6(cipher_api);
		goto bad_mem;
	}

	/* Allocate cipher */
	cc->tfm = FUNC5(cipher_api, 0, 0);
	if (FUNC1(cc->tfm)) {
		ret = FUNC2(cc->tfm);
		ti->error = "Error allocating crypto tfm";
		goto bad;
	}

	/* Initialize and set key */
	ret = FUNC3(cc, key);
	if (ret < 0) {
		ti->error = "Error decoding and setting key";
		goto bad;
	}

	/* Initialize IV */
	cc->iv_size = FUNC4(cc->tfm);
	if (cc->iv_size)
		/* at least a 64 bit sector number should fit in our buffer */
		cc->iv_size = FUNC9(cc->iv_size,
				  (unsigned int)(sizeof(u64) / sizeof(u8)));
	else if (ivmode) {
		FUNC0("Selected cipher does not support IVs");
		ivmode = NULL;
	}

	/* Choose ivmode, see comments at iv code. */
	if (ivmode == NULL)
		cc->iv_gen_ops = NULL;
	else if (FUNC12(ivmode, "plain") == 0)
		cc->iv_gen_ops = &crypt_iv_plain_ops;
	else if (FUNC12(ivmode, "plain64") == 0)
		cc->iv_gen_ops = &crypt_iv_plain64_ops;
	else if (FUNC12(ivmode, "essiv") == 0)
		cc->iv_gen_ops = &crypt_iv_essiv_ops;
	else if (FUNC12(ivmode, "benbi") == 0)
		cc->iv_gen_ops = &crypt_iv_benbi_ops;
	else if (FUNC12(ivmode, "null") == 0)
		cc->iv_gen_ops = &crypt_iv_null_ops;
	else {
		ret = -EINVAL;
		ti->error = "Invalid IV mode";
		goto bad;
	}

	/* Allocate IV */
	if (cc->iv_gen_ops && cc->iv_gen_ops->ctr) {
		ret = cc->iv_gen_ops->ctr(cc, ti, ivopts);
		if (ret < 0) {
			ti->error = "Error creating IV";
			goto bad;
		}
	}

	/* Initialize IV (set keys for ESSIV etc) */
	if (cc->iv_gen_ops && cc->iv_gen_ops->init) {
		ret = cc->iv_gen_ops->init(cc);
		if (ret < 0) {
			ti->error = "Error initialising IV";
			goto bad;
		}
	}

	ret = 0;
bad:
	FUNC6(cipher_api);
	return ret;

bad_mem:
	ti->error = "Cannot allocate cipher strings";
	return -ENOMEM;
}