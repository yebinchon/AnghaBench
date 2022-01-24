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
struct ks_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_MBIR ; 
 unsigned int MBIR_RXMBF ; 
 unsigned int MBIR_RXMBFA ; 
 unsigned int MBIR_TXMBF ; 
 unsigned int MBIR_TXMBFA ; 
 int /*<<< orphan*/  FUNC0 (struct ks_net*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_net*,char*) ; 
 unsigned int FUNC2 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_net*,char*) ; 

__attribute__((used)) static int FUNC4(struct ks_net *ks)
{
	unsigned both_done = MBIR_TXMBF | MBIR_RXMBF;
	int ret = 0;
	unsigned rd;

	rd = FUNC2(ks, KS_MBIR);

	if ((rd & both_done) != both_done) {
		FUNC3(ks, "Memory selftest not finished\n");
		return 0;
	}

	if (rd & MBIR_TXMBFA) {
		FUNC0(ks, "TX memory selftest fails\n");
		ret |= 1;
	}

	if (rd & MBIR_RXMBFA) {
		FUNC0(ks, "RX memory selftest fails\n");
		ret |= 2;
	}

	FUNC1(ks, "the selftest passes\n");
	return ret;
}