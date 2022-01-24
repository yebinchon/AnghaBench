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
struct ethoc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_ADDR0 ; 
 int /*<<< orphan*/  MAC_ADDR1 ; 
 int FUNC0 (struct ethoc*,int /*<<< orphan*/ ) ; 
 struct ethoc* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, void *addr)
{
	struct ethoc *priv = FUNC1(dev);
	u8 *mac = (u8 *)addr;
	u32 reg;

	reg = FUNC0(priv, MAC_ADDR0);
	mac[2] = (reg >> 24) & 0xff;
	mac[3] = (reg >> 16) & 0xff;
	mac[4] = (reg >>  8) & 0xff;
	mac[5] = (reg >>  0) & 0xff;

	reg = FUNC0(priv, MAC_ADDR1);
	mac[0] = (reg >>  8) & 0xff;
	mac[1] = (reg >>  0) & 0xff;

	return 0;
}