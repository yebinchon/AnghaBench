#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long h_divisor; unsigned long p_divisor; } ;
struct TYPE_5__ {unsigned long fclk; unsigned long hclk; unsigned long pclk; unsigned long armclk; int hclk_tns; } ;
struct TYPE_4__ {unsigned long frequency; int /*<<< orphan*/  index; } ;
struct s3c_cpufreq_config {TYPE_3__ divs; TYPE_2__ freq; TYPE_1__ pll; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_MPLLCON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clk_arm ; 
 int /*<<< orphan*/  clk_fclk ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clk_hclk ; 
 int /*<<< orphan*/  clk_pclk ; 

__attribute__((used)) static void FUNC2(struct s3c_cpufreq_config *cfg)
{
	unsigned long fclk, pclk, hclk, armclk;

	cfg->freq.fclk = fclk = FUNC1(clk_fclk);
	cfg->freq.hclk = hclk = FUNC1(clk_hclk);
	cfg->freq.pclk = pclk = FUNC1(clk_pclk);
	cfg->freq.armclk = armclk = FUNC1(clk_arm);

	cfg->pll.index = FUNC0(S3C2410_MPLLCON);
	cfg->pll.frequency = fclk;

	cfg->freq.hclk_tns = 1000000000 / (cfg->freq.hclk / 10);

	cfg->divs.h_divisor = fclk / hclk;
	cfg->divs.p_divisor = fclk / pclk;
}