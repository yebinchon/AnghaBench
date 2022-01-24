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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ipw2100_priv {scalar_t__ ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct ipw2100_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static inline void FUNC3(struct net_device *dev, u32 reg, u32 * val)
{
	struct ipw2100_priv *priv = FUNC2(dev);

	*val = FUNC1(priv->ioaddr + reg);
	FUNC0("r: 0x%08X => 0x%08X\n", reg, *val);
}