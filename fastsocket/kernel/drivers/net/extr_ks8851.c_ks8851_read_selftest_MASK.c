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
struct ks8851_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_MBIR ; 
 unsigned int MBIR_RXMBF ; 
 unsigned int MBIR_RXMBFA ; 
 unsigned int MBIR_TXMBF ; 
 unsigned int MBIR_TXMBFA ; 
 unsigned int FUNC0 (struct ks8851_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks8851_net*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8851_net*,char*) ; 

__attribute__((used)) static int FUNC3(struct ks8851_net *ks)
{
	unsigned both_done = MBIR_TXMBF | MBIR_RXMBF;
	int ret = 0;
	unsigned rd;

	rd = FUNC0(ks, KS_MBIR);

	if ((rd & both_done) != both_done) {
		FUNC2(ks, "Memory selftest not finished\n");
		return 0;
	}

	if (rd & MBIR_TXMBFA) {
		FUNC1(ks, "TX memory selftest fail\n");
		ret |= 1;
	}

	if (rd & MBIR_RXMBFA) {
		FUNC1(ks, "RX memory selftest fail\n");
		ret |= 2;
	}

	return 0;
}