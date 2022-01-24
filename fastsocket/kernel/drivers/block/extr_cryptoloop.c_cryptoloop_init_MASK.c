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
struct loop_info64 {int lo_offset; int /*<<< orphan*/  lo_encrypt_key_size; int /*<<< orphan*/  lo_encrypt_key; int /*<<< orphan*/  lo_crypt_name; } ;
struct loop_device {struct crypto_blkcipher* key_data; } ;
struct crypto_blkcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct crypto_blkcipher*) ; 
 int LOOP_IV_SECTOR_SIZE ; 
 int LO_NAME_SIZE ; 
 int FUNC1 (struct crypto_blkcipher*) ; 
 struct crypto_blkcipher* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_blkcipher*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct loop_device *lo, const struct loop_info64 *info)
{
	int err = -EINVAL;
	int cipher_len;
	int mode_len;
	char cms[LO_NAME_SIZE];			/* cipher-mode string */
	char *cipher;
	char *mode;
	char *cmsp = cms;			/* c-m string pointer */
	struct crypto_blkcipher *tfm;

	/* encryption breaks for non sector aligned offsets */

	if (info->lo_offset % LOOP_IV_SECTOR_SIZE)
		goto out;

	FUNC8(cms, info->lo_crypt_name, LO_NAME_SIZE);
	cms[LO_NAME_SIZE - 1] = 0;

	cipher = cmsp;
	cipher_len = FUNC7(cmsp, "-");

	mode = cmsp + cipher_len;
	mode_len = 0;
	if (*mode) {
		mode++;
		mode_len = FUNC7(mode, "-");
	}

	if (!mode_len) {
		mode = "cbc";
		mode_len = 3;
	}

	if (cipher_len + mode_len + 3 > LO_NAME_SIZE)
		return -EINVAL;

	FUNC6(cms, mode, mode_len);
	cmsp = cms + mode_len;
	*cmsp++ = '(';
	FUNC5(cmsp, info->lo_crypt_name, cipher_len);
	cmsp += cipher_len;
	*cmsp++ = ')';
	*cmsp = 0;

	tfm = FUNC2(cms, 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(tfm))
		return FUNC1(tfm);

	err = FUNC3(tfm, info->lo_encrypt_key,
				      info->lo_encrypt_key_size);
	
	if (err != 0)
		goto out_free_tfm;

	lo->key_data = tfm;
	return 0;

 out_free_tfm:
	FUNC4(tfm);

 out:
	return err;
}