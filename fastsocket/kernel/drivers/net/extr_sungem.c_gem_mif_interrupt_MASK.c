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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct gem {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MIF_STATUS ; 
 int MIF_STATUS_DATA ; 
 int MIF_STATUS_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct gem*,int,int) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct gem *gp, u32 gem_status)
{
	u32 mif_status = FUNC1(gp->regs + MIF_STATUS);
	u32 reg_val, changed_bits;

	reg_val = (mif_status & MIF_STATUS_DATA) >> 16;
	changed_bits = (mif_status & MIF_STATUS_STAT);

	FUNC0(gp, reg_val, changed_bits);

	return 0;
}