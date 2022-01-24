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
typedef  int u64 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RXDMA_CFIG1_EN ; 
 int RXDMA_CFIG1_QST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct niu *np, int channel, int on)
{
	u64 val = FUNC1(FUNC0(channel));
	int limit;

	if (on)
		val |= RXDMA_CFIG1_EN;
	else
		val &= ~RXDMA_CFIG1_EN;
	FUNC2(FUNC0(channel), val);

	limit = 1000;
	while (--limit > 0) {
		if (FUNC1(FUNC0(channel)) & RXDMA_CFIG1_QST)
			break;
		FUNC3(10);
	}
	if (limit <= 0)
		return -ENODEV;
	return 0;
}