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
struct net_device {unsigned int base_addr; } ;
struct e8390_pkt_hdr {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ AXNET_CMD ; 
 scalar_t__ AXNET_DATAPORT ; 
 int E8390_RREAD ; 
 int E8390_START ; 
 scalar_t__ EN0_RSARHI ; 
 scalar_t__ EN0_RSARLO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct e8390_pkt_hdr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
			 struct e8390_pkt_hdr *hdr,
			 int ring_page)
{
    unsigned int nic_base = dev->base_addr;

    FUNC2(0, nic_base + EN0_RSARLO);		/* On page boundary */
    FUNC2(ring_page, nic_base + EN0_RSARHI);
    FUNC2(E8390_RREAD+E8390_START, nic_base + AXNET_CMD);

    FUNC0(nic_base + AXNET_DATAPORT, hdr,
	    sizeof(struct e8390_pkt_hdr)>>1);
    /* Fix for big endian systems */
    hdr->count = FUNC1(hdr->count);

}