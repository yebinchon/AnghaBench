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
typedef  int /*<<< orphan*/  u16 ;
struct highlander_i2c_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SMMR ; 
 int /*<<< orphan*/  SMMR_SP ; 
 int /*<<< orphan*/  SMMR_TMMD ; 
 scalar_t__ iic_force_normal ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct highlander_i2c_dev *dev)
{
	u16 smmr;

	smmr = FUNC0(dev->base + SMMR);
	smmr |= SMMR_TMMD;

	if (iic_force_normal)
		smmr &= ~SMMR_SP;
	else
		smmr |= SMMR_SP;

	FUNC1(smmr, dev->base + SMMR);
}