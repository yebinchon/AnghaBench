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
typedef  int /*<<< orphan*/  u64 ;
struct txx9dmac_chan {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int /*<<< orphan*/  CHAR ; 
 int /*<<< orphan*/  CNTR ; 
 int /*<<< orphan*/  CSR ; 
 int /*<<< orphan*/  DAIR ; 
 int /*<<< orphan*/  DAR ; 
 int /*<<< orphan*/  SAIR ; 
 int /*<<< orphan*/  SAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct txx9dmac_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct txx9dmac_chan*) ; 

__attribute__((used)) static void FUNC7(struct txx9dmac_chan *dc)
{
	if (FUNC6(dc))
		FUNC5(FUNC0(&dc->chan),
			"  CHAR: %#llx SAR: %#llx DAR: %#llx CNTR: %#x"
			" SAIR: %#x DAIR: %#x CCR: %#x CSR: %#x\n",
			(u64)FUNC2(dc),
			FUNC4(dc, SAR),
			FUNC4(dc, DAR),
			FUNC3(dc, CNTR),
			FUNC3(dc, SAIR),
			FUNC3(dc, DAIR),
			FUNC3(dc, CCR),
			FUNC3(dc, CSR));
	else
		FUNC5(FUNC0(&dc->chan),
			"  CHAR: %#x SAR: %#x DAR: %#x CNTR: %#x"
			" SAIR: %#x DAIR: %#x CCR: %#x CSR: %#x\n",
			FUNC1(dc, CHAR),
			FUNC1(dc, SAR),
			FUNC1(dc, DAR),
			FUNC1(dc, CNTR),
			FUNC1(dc, SAIR),
			FUNC1(dc, DAIR),
			FUNC1(dc, CCR),
			FUNC1(dc, CSR));
}