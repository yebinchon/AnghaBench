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
struct txx9dmac_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int /*<<< orphan*/  CHAR ; 
 int /*<<< orphan*/  CNTR ; 
 int /*<<< orphan*/  DAIR ; 
 int /*<<< orphan*/  DAR ; 
 int /*<<< orphan*/  SAIR ; 
 int /*<<< orphan*/  SAR ; 
 int /*<<< orphan*/  TXX9_DMA_CCR_CHRST ; 
 int /*<<< orphan*/  FUNC0 (struct txx9dmac_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct txx9dmac_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct txx9dmac_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct txx9dmac_chan*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct txx9dmac_chan *dc)
{
	FUNC1(dc, CCR, TXX9_DMA_CCR_CHRST);
	if (FUNC3(dc)) {
		FUNC0(dc);
		FUNC2(dc, SAR, 0);
		FUNC2(dc, DAR, 0);
	} else {
		FUNC1(dc, CHAR, 0);
		FUNC1(dc, SAR, 0);
		FUNC1(dc, DAR, 0);
	}
	FUNC1(dc, CNTR, 0);
	FUNC1(dc, SAIR, 0);
	FUNC1(dc, DAIR, 0);
	FUNC1(dc, CCR, 0);
	FUNC4();
}