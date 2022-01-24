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
struct dma_register {scalar_t__ cfg; } ;

/* Variables and functions */
 scalar_t__ ANOMALY_05000435 ; 
 int CLKBUFOE ; 
 int CONFIG_CCLK_ACT_DIV ; 
 int /*<<< orphan*/  CONFIG_MEM_EBIU_DDRQUE ; 
 int CONFIG_SCLK_DIV ; 
 int IWR_DISABLE_ALL ; 
 int FUNC0 (int) ; 
 size_t MAX_DMA_CHANNELS ; 
 int /*<<< orphan*/  PLL_CTL ; 
 int PLL_CTL_VAL ; 
 int SDGCTL_WIDTH ; 
 int SRFS ; 
 int SRREQ ; 
 int /*<<< orphan*/  VR_CTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 struct dma_register** dma_io_base_addr ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  mem_DDRCTL0 ; 
 int /*<<< orphan*/  mem_DDRCTL1 ; 
 int /*<<< orphan*/  mem_DDRCTL2 ; 
 int mem_SDGCTL ; 
 int /*<<< orphan*/  mem_SDRRC ; 

__attribute__((l1_text))
void FUNC20(void)
{
	/* Kill any active DMAs as they may trigger external memory accesses
	 * in the middle of reprogramming things, and that'll screw us up.
	 * For example, any automatic DMAs left by U-Boot for splash screens.
	 */
	size_t i;
	for (i = 0; i < MAX_DMA_CHANNELS; ++i) {
		struct dma_register *dma = dma_io_base_addr[i];
		dma->cfg = 0;
	}

	FUNC19();

#ifdef SIC_IWR0
	bfin_write_SIC_IWR0(IWR_ENABLE(0));
# ifdef SIC_IWR1
	/* BF52x system reset does not properly reset SIC_IWR1 which
	 * will screw up the bootrom as it relies on MDMA0/1 waking it
	 * up from IDLE instructions.  See this report for more info:
	 * http://blackfin.uclinux.org/gf/tracker/4323
	 */
	if (ANOMALY_05000435)
		bfin_write_SIC_IWR1(IWR_ENABLE(10) | IWR_ENABLE(11));
	else
		bfin_write_SIC_IWR1(IWR_DISABLE_ALL);
# endif
# ifdef SIC_IWR2
	bfin_write_SIC_IWR2(IWR_DISABLE_ALL);
# endif
#else
	FUNC15(FUNC0(0));
#endif
	FUNC19();
#ifdef EBIU_SDGCTL
	bfin_write_EBIU_SDGCTL(bfin_read_EBIU_SDGCTL() | SRFS);
	do_sync();
#endif

#ifdef CLKBUFOE
	bfin_write16(VR_CTL, bfin_read_VR_CTL() | CLKBUFOE);
	do_sync();
	__asm__ __volatile__("IDLE;");
#endif
	FUNC14(0x300);
	FUNC19();
	/* We always write PLL_CTL thus avoiding Anomaly 05000242 */
	FUNC5(PLL_CTL, PLL_CTL_VAL);
	__asm__ __volatile__("IDLE;");
	FUNC13(CONFIG_CCLK_ACT_DIV | CONFIG_SCLK_DIV);
#ifdef EBIU_SDGCTL
	bfin_write_EBIU_SDRRC(mem_SDRRC);
	bfin_write_EBIU_SDGCTL((bfin_read_EBIU_SDGCTL() & SDGCTL_WIDTH) | mem_SDGCTL);
#else
	FUNC10(FUNC2() & ~(SRREQ));
	FUNC19();
	FUNC10(FUNC2() | 0x1);
	FUNC6(mem_DDRCTL0);
	FUNC7(mem_DDRCTL1);
	FUNC8(mem_DDRCTL2);
#ifdef CONFIG_MEM_EBIU_DDRQUE
	bfin_write_EBIU_DDRQUE(CONFIG_MEM_EBIU_DDRQUE);
#endif
#endif
	FUNC19();
	FUNC1(0);
}