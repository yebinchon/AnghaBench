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
typedef  int u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct gfar_private {int hash_width; int /*<<< orphan*/ * hash_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_ADDR_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct gfar_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, u8 *addr)
{
	u32 tempval;
	struct gfar_private *priv = FUNC3(dev);
	u32 result = FUNC0(MAC_ADDR_LEN, addr);
	int width = priv->hash_width;
	u8 whichbit = (result >> (32 - width)) & 0x1f;
	u8 whichreg = result >> (32 - width + 5);
	u32 value = (1 << (31-whichbit));

	tempval = FUNC1(priv->hash_regs[whichreg]);
	tempval |= value;
	FUNC2(priv->hash_regs[whichreg], tempval);

	return;
}