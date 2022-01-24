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
struct shash_alg {int /*<<< orphan*/  digestsize; } ;
struct seq_file {int dummy; } ;
struct crypto_alg {int /*<<< orphan*/  cra_blocksize; } ;

/* Variables and functions */
 struct shash_alg* FUNC0 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, struct crypto_alg *alg)
{
	struct shash_alg *salg = FUNC0(alg);

	FUNC1(m, "type         : shash\n");
	FUNC1(m, "blocksize    : %u\n", alg->cra_blocksize);
	FUNC1(m, "digestsize   : %u\n", salg->digestsize);
}