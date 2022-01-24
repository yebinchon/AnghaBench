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
struct net_device {int dummy; } ;
struct dscc4_dev_priv {scalar_t__ base_addr; int /*<<< orphan*/ * scc_regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dscc4_dev_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(u32 bits, struct dscc4_dev_priv *dpriv,
		       struct net_device *dev, int offset)
{
	/*
	 * Thread-UNsafe.
	 * As of 2002/02/16, there are no thread racing for access.
	 */
	dpriv->scc_regs[offset >> 2] = bits;
	FUNC1(bits, dpriv->base_addr + FUNC0(dpriv) + offset);
}