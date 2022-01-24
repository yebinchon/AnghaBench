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
struct crypt_config {int key_size; int /*<<< orphan*/  flags; int /*<<< orphan*/  key; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CRYPT_KEY_VALID ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct crypt_config *cc, char *key)
{
	int r = -EINVAL;
	int key_string_len = FUNC5(key);

	/* The key size may not be changed. */
	if (cc->key_size != (key_string_len >> 1))
		goto out;

	/* Hyphen (which gives a key_size of zero) means there is no key. */
	if (!cc->key_size && FUNC4(key, "-"))
		goto out;

	if (cc->key_size && FUNC0(cc->key, key, cc->key_size) < 0)
		goto out;

	r = FUNC1(cc->tfm, cc->key, cc->key_size);
	if (!r)
		FUNC3(DM_CRYPT_KEY_VALID, &cc->flags);
out:
	/* Hex key string not needed after here, so wipe it. */
	FUNC2(key, '0', key_string_len);

	return r;
}