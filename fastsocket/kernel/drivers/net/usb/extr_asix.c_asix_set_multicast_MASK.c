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
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int /*<<< orphan*/  data; } ;
struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {struct dev_mc_list* next; int /*<<< orphan*/  dmi_addr; } ;
struct asix_data {int* multi_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_WRITE_MULTI_FILTER ; 
 int /*<<< orphan*/  AX_CMD_WRITE_RX_CTL ; 
 int /*<<< orphan*/  AX_DEFAULT_RX_CTL ; 
 scalar_t__ AX_MAX_MCAST ; 
 int /*<<< orphan*/  AX_MCAST_FILTER_SIZE ; 
 int /*<<< orphan*/  AX_RX_CTL_AM ; 
 int /*<<< orphan*/  AX_RX_CTL_AMALL ; 
 int /*<<< orphan*/  AX_RX_CTL_PRO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *net)
{
	struct usbnet *dev = FUNC3(net);
	struct asix_data *data = (struct asix_data *)&dev->data;
	u16 rx_ctl = AX_DEFAULT_RX_CTL;

	if (net->flags & IFF_PROMISC) {
		rx_ctl |= AX_RX_CTL_PRO;
	} else if (net->flags & IFF_ALLMULTI
		   || net->mc_count > AX_MAX_MCAST) {
		rx_ctl |= AX_RX_CTL_AMALL;
	} else if (net->mc_count == 0) {
		/* just broadcast and directed */
	} else {
		/* We use the 20 byte dev->data
		 * for our 8 byte filter buffer
		 * to avoid allocating memory that
		 * is tricky to free later */
		struct dev_mc_list *mc_list = net->mc_list;
		u32 crc_bits;
		int i;

		FUNC2(data->multi_filter, 0, AX_MCAST_FILTER_SIZE);

		/* Build the multicast hash filter. */
		for (i = 0; i < net->mc_count; i++) {
			crc_bits =
			    FUNC1(ETH_ALEN,
				      mc_list->dmi_addr) >> 26;
			data->multi_filter[crc_bits >> 3] |=
			    1 << (crc_bits & 7);
			mc_list = mc_list->next;
		}

		FUNC0(dev, AX_CMD_WRITE_MULTI_FILTER, 0, 0,
				   AX_MCAST_FILTER_SIZE, data->multi_filter);

		rx_ctl |= AX_RX_CTL_AM;
	}

	FUNC0(dev, AX_CMD_WRITE_RX_CTL, rx_ctl, 0, 0, NULL);
}