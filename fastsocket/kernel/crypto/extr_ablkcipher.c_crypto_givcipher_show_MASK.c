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
struct seq_file {int dummy; } ;
struct ablkcipher_alg {char* min_keysize; char* max_keysize; char* ivsize; scalar_t__ geniv; } ;
struct crypto_alg {int cra_flags; char* cra_blocksize; struct ablkcipher_alg cra_ablkcipher; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct seq_file *m, struct crypto_alg *alg)
{
	struct ablkcipher_alg *ablkcipher = &alg->cra_ablkcipher;

	FUNC0(m, "type         : givcipher\n");
	FUNC0(m, "async        : %s\n", alg->cra_flags & CRYPTO_ALG_ASYNC ?
					     "yes" : "no");
	FUNC0(m, "blocksize    : %u\n", alg->cra_blocksize);
	FUNC0(m, "min keysize  : %u\n", ablkcipher->min_keysize);
	FUNC0(m, "max keysize  : %u\n", ablkcipher->max_keysize);
	FUNC0(m, "ivsize       : %u\n", ablkcipher->ivsize);
	FUNC0(m, "geniv        : %s\n", ablkcipher->geniv ?: "<built-in>");
}