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
struct TYPE_2__ {int /*<<< orphan*/  seedsize; } ;
struct crypto_alg {TYPE_1__ cra_rng; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct seq_file *m, struct crypto_alg *alg)
{
	FUNC0(m, "type         : rng\n");
	FUNC0(m, "seedsize     : %u\n", alg->cra_rng.seedsize);
}