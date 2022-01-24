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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2440_CAMDIVN ; 
 unsigned long S3C2440_CAMDIVN_CAMCLK_MASK ; 
 unsigned long S3C2440_CAMDIVN_CAMCLK_SEL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct clk*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct clk *clk, unsigned long rate)
{
	unsigned long parent_rate = FUNC2(clk->parent);
	unsigned long camdivn =  FUNC0(S3C2440_CAMDIVN);

	rate = FUNC3(clk, rate);

	camdivn &= ~(S3C2440_CAMDIVN_CAMCLK_SEL | S3C2440_CAMDIVN_CAMCLK_MASK);

	if (rate != parent_rate) {
		camdivn |= S3C2440_CAMDIVN_CAMCLK_SEL;
		camdivn |= (((parent_rate / rate) / 2) - 1);
	}

	FUNC1(camdivn, S3C2440_CAMDIVN);

	return 0;
}