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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {void* false_cca; void* rx_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  STA_CSR0 ; 
 int /*<<< orphan*/  STA_CSR0_FCS_ERROR ; 
 int /*<<< orphan*/  STA_CSR1 ; 
 int /*<<< orphan*/  STA_CSR1_FALSE_CCA_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev,
			       struct link_qual *qual)
{
	u32 reg;

	/*
	 * Update FCS error count from register.
	 */
	FUNC1(rt2x00dev, STA_CSR0, &reg);
	qual->rx_failed = FUNC0(reg, STA_CSR0_FCS_ERROR);

	/*
	 * Update False CCA count from register.
	 */
	FUNC1(rt2x00dev, STA_CSR1, &reg);
	qual->false_cca = FUNC0(reg, STA_CSR1_FALSE_CCA_ERROR);
}