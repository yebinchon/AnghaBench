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
struct aead_alg {char* ivsize; char* maxauthsize; scalar_t__ geniv; } ;
struct crypto_alg {int cra_flags; char* cra_blocksize; struct aead_alg cra_aead; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct seq_file *m, struct crypto_alg *alg)
{
	struct aead_alg *aead = &alg->cra_aead;

	FUNC0(m, "type         : aead\n");
	FUNC0(m, "async        : %s\n", alg->cra_flags & CRYPTO_ALG_ASYNC ?
					     "yes" : "no");
	FUNC0(m, "blocksize    : %u\n", alg->cra_blocksize);
	FUNC0(m, "ivsize       : %u\n", aead->ivsize);
	FUNC0(m, "maxauthsize  : %u\n", aead->maxauthsize);
	FUNC0(m, "geniv        : %s\n", aead->geniv ?: "<built-in>");
}