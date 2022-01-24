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
typedef  unsigned long u32 ;
struct ipu {int dummy; } ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;

/* Variables and functions */
 int /*<<< orphan*/  IDMAC_CHA_PRI ; 
 int /*<<< orphan*/  FUNC0 (struct ipu*) ; 
 unsigned long FUNC1 (struct ipu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ipu *ipu, enum ipu_channel channel,
				     bool prio)
{
	u32 reg = FUNC1(ipu, IDMAC_CHA_PRI);

	if (prio)
		reg |= 1UL << channel;
	else
		reg &= ~(1UL << channel);

	FUNC2(ipu, reg, IDMAC_CHA_PRI);

	FUNC0(ipu);
}