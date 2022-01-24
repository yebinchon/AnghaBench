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
struct scatterlist {int dummy; } ;
struct iv_essiv_private {int /*<<< orphan*/  hash_tfm; int /*<<< orphan*/  salt; int /*<<< orphan*/  tfm; } ;
struct hash_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;
struct TYPE_2__ {struct iv_essiv_private essiv; } ;
struct crypt_config {int /*<<< orphan*/  key_size; int /*<<< orphan*/  key; TYPE_1__ iv_gen_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hash_desc*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypt_config *cc)
{
	struct iv_essiv_private *essiv = &cc->iv_gen_private.essiv;
	struct hash_desc desc;
	struct scatterlist sg;
	int err;

	FUNC3(&sg, cc->key, cc->key_size);
	desc.tfm = essiv->hash_tfm;
	desc.flags = CRYPTO_TFM_REQ_MAY_SLEEP;

	err = FUNC1(&desc, &sg, cc->key_size, essiv->salt);
	if (err)
		return err;

	return FUNC0(essiv->tfm, essiv->salt,
				    FUNC2(essiv->hash_tfm));
}