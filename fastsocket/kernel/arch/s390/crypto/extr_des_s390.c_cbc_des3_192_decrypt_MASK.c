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
struct scatterlist {int dummy; } ;
struct crypt_s390_des3_192_ctx {int /*<<< orphan*/  iv; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  KMC_TDEA_192_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC1 (struct blkcipher_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct blkcipher_walk*) ; 
 struct crypt_s390_des3_192_ctx* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct blkcipher_desc *desc,
				struct scatterlist *dst,
				struct scatterlist *src, unsigned int nbytes)
{
	struct crypt_s390_des3_192_ctx *sctx = FUNC2(desc->tfm);
	struct blkcipher_walk walk;

	FUNC0(&walk, dst, src, nbytes);
	return FUNC1(desc, KMC_TDEA_192_DECRYPT, sctx->iv, &walk);
}