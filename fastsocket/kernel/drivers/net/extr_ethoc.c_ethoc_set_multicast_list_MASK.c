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
struct net_device {int flags; struct dev_mc_list* mc_list; } ;
struct ethoc {int dummy; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addr; int /*<<< orphan*/  dmi_addrlen; struct dev_mc_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HASH0 ; 
 int /*<<< orphan*/  ETH_HASH1 ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_LOOPBACK ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MODER ; 
 int MODER_BRO ; 
 int MODER_LOOP ; 
 int MODER_PRO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int /*<<< orphan*/ ,int) ; 
 struct ethoc* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ethoc *priv = FUNC3(dev);
	u32 mode = FUNC1(priv, MODER);
	struct dev_mc_list *mc = NULL;
	u32 hash[2] = { 0, 0 };

	/* set loopback mode if requested */
	if (dev->flags & IFF_LOOPBACK)
		mode |=  MODER_LOOP;
	else
		mode &= ~MODER_LOOP;

	/* receive broadcast frames if requested */
	if (dev->flags & IFF_BROADCAST)
		mode &= ~MODER_BRO;
	else
		mode |=  MODER_BRO;

	/* enable promiscuous mode if requested */
	if (dev->flags & IFF_PROMISC)
		mode |=  MODER_PRO;
	else
		mode &= ~MODER_PRO;

	FUNC2(priv, MODER, mode);

	/* receive multicast frames */
	if (dev->flags & IFF_ALLMULTI) {
		hash[0] = 0xffffffff;
		hash[1] = 0xffffffff;
	} else {
		for (mc = dev->mc_list; mc; mc = mc->next) {
			u32 crc = FUNC0(mc->dmi_addrlen, mc->dmi_addr);
			int bit = (crc >> 26) & 0x3f;
			hash[bit >> 5] |= 1 << (bit & 0x1f);
		}
	}

	FUNC2(priv, ETH_HASH0, hash[0]);
	FUNC2(priv, ETH_HASH1, hash[1]);
}