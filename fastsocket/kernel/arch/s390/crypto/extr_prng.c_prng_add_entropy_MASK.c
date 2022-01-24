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
typedef  int /*<<< orphan*/  entropy ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KMC_PRNG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  parm_block ; 

__attribute__((used)) static void FUNC3(void)
{
	__u64 entropy[4];
	unsigned int i;
	int ret;

	for (i = 0; i < 16; i++) {
		ret = FUNC1(KMC_PRNG, parm_block, (char *)entropy,
				     (char *)entropy, sizeof(entropy));
		FUNC0(ret < 0 || ret != sizeof(entropy));
		FUNC2(parm_block, entropy, sizeof(entropy));
	}
}