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
typedef  int /*<<< orphan*/  t ;
struct gpmc_timings {int cs_on; int adv_on; int adv_rd_off; int oe_on; int access; int oe_off; int cs_rd_off; int adv_wr_off; int we_on; int we_off; int cs_wr_off; void* wr_cycle; void* rd_cycle; } ;

/* Variables and functions */
 int /*<<< orphan*/  async_cs ; 
 int FUNC0 (int /*<<< orphan*/ ,struct gpmc_timings*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpmc_timings*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned sysclk_ps, unsigned fclk_ps)
{
	struct gpmc_timings	t;
	unsigned		t_acsnh_advnh = sysclk_ps + 3000;
	unsigned		tmp;

	FUNC1(&t, 0, sizeof(t));

	/* CS_ON = t_acsnh_acsnl */
	t.cs_on = 8;
	/* ADV_ON = t_acsnh_advnh - t_advn */
	t.adv_on = FUNC2(t.cs_on, t_acsnh_advnh - 7000, fclk_ps);

	/*
	 * READ ... from omap2420 TRM fig 12-13
	 */

	/* ADV_RD_OFF = t_acsnh_advnh */
	t.adv_rd_off = FUNC2(t.adv_on, t_acsnh_advnh, fclk_ps);

	/* OE_ON = t_acsnh_advnh + t_advn_oen (then wait for nRDY) */
	t.oe_on = FUNC2(t.adv_on, t_acsnh_advnh + 1000, fclk_ps);

	/* ACCESS = counters continue only after nRDY */
	tmp = t.oe_on * 1000 + 300;
	t.access = FUNC2(t.oe_on, tmp, fclk_ps);

	/* OE_OFF = after data gets sampled */
	tmp = t.access * 1000;
	t.oe_off = FUNC2(t.access, tmp, fclk_ps);

	t.cs_rd_off = t.oe_off;

	tmp = t.cs_rd_off * 1000 + 7000 /* t_acsn_rdy_z */;
	t.rd_cycle = FUNC2(t.cs_rd_off, tmp, fclk_ps);

	/*
	 * WRITE ... from omap2420 TRM fig 12-15
	 */

	/* ADV_WR_OFF = t_acsnh_advnh */
	t.adv_wr_off = t.adv_rd_off;

	/* WE_ON = t_acsnh_advnh + t_advn_wen (then wait for nRDY) */
	t.we_on = FUNC2(t.adv_wr_off, t_acsnh_advnh + 1000, fclk_ps);

	/* WE_OFF = after data gets sampled */
	tmp = t.we_on * 1000 + 300;
	t.we_off = FUNC2(t.we_on, tmp, fclk_ps);

	t.cs_wr_off = t.we_off;

	tmp = t.cs_wr_off * 1000 + 7000 /* t_acsn_rdy_z */;
	t.wr_cycle = FUNC2(t.cs_wr_off, tmp, fclk_ps);

	return FUNC0(async_cs, &t);
}