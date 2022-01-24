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
struct seq_file {int dummy; } ;
struct crypto_alg {int cra_flags; char* cra_blocksize; } ;
struct TYPE_2__ {char* digestsize; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 TYPE_1__* FUNC0 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, struct crypto_alg *alg)
{
	FUNC1(m, "type         : ahash\n");
	FUNC1(m, "async        : %s\n", alg->cra_flags & CRYPTO_ALG_ASYNC ?
					     "yes" : "no");
	FUNC1(m, "blocksize    : %u\n", alg->cra_blocksize);
	FUNC1(m, "digestsize   : %u\n",
		   FUNC0(alg)->digestsize);
}