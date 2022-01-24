#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; int /*<<< orphan*/  duplex; int /*<<< orphan*/  port; } ;
struct TYPE_6__ {TYPE_2__ mii; TYPE_1__ link; int /*<<< orphan*/  pmt; } ;
struct mac_device_info {TYPE_3__ hw; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GMAC_CONTROL_DM ; 
 int /*<<< orphan*/  GMAC_CONTROL_FES ; 
 int /*<<< orphan*/  GMAC_CONTROL_PS ; 
 int /*<<< orphan*/  GMAC_MII_ADDR ; 
 int /*<<< orphan*/  GMAC_MII_DATA ; 
 scalar_t__ GMAC_VERSION ; 
 int /*<<< orphan*/  PMT_SUPPORTED ; 
 int /*<<< orphan*/  gmac_driver ; 
 struct mac_device_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (scalar_t__) ; 

struct mac_device_info *FUNC3(unsigned long ioaddr)
{
	struct mac_device_info *mac;
	u32 uid = FUNC2(ioaddr + GMAC_VERSION);

	FUNC1("\tGMAC - user ID: 0x%x, Synopsys ID: 0x%x\n",
	       ((uid & 0x0000ff00) >> 8), (uid & 0x000000ff));

	mac = FUNC0(sizeof(const struct mac_device_info), GFP_KERNEL);

	mac->ops = &gmac_driver;
	mac->hw.pmt = PMT_SUPPORTED;
	mac->hw.link.port = GMAC_CONTROL_PS;
	mac->hw.link.duplex = GMAC_CONTROL_DM;
	mac->hw.link.speed = GMAC_CONTROL_FES;
	mac->hw.mii.addr = GMAC_MII_ADDR;
	mac->hw.mii.data = GMAC_MII_DATA;

	return mac;
}