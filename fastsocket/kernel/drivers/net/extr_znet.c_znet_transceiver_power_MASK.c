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
struct znet_private {scalar_t__ sia_base; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct znet_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC3 (struct net_device *dev, int on)
{
	struct znet_private *znet = FUNC1(dev);
	unsigned char v;

	/* Turn on/off the 82501 SIA, using zenith-specific magic. */
	/* Select LAN control register */
	FUNC2(0x10, znet->sia_base);

	if (on)
		v = FUNC0(znet->sia_base + 1) | 0x84;
	else
		v = FUNC0(znet->sia_base + 1) & ~0x84;

	FUNC2(v, znet->sia_base+1); /* Turn on/off LAN power (bit 2). */
}