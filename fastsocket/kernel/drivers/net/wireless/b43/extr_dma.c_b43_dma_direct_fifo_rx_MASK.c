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
struct b43_wldev {int dummy; } ;
typedef  enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 

void FUNC4(struct b43_wldev *dev,
			    unsigned int engine_index, bool enable)
{
	enum b43_dmatype type;
	u16 mmio_base;

	type = FUNC2(FUNC3(dev));

	mmio_base = FUNC0(type, engine_index);
	FUNC1(dev, type, mmio_base, enable);
}