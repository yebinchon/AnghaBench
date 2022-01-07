
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int data; int addr; } ;
struct TYPE_4__ {int speed; int duplex; int port; } ;
struct TYPE_6__ {TYPE_2__ mii; TYPE_1__ link; int pmt; } ;
struct mac_device_info {TYPE_3__ hw; int * ops; } ;


 int GFP_KERNEL ;
 int GMAC_CONTROL_DM ;
 int GMAC_CONTROL_FES ;
 int GMAC_CONTROL_PS ;
 int GMAC_MII_ADDR ;
 int GMAC_MII_DATA ;
 scalar_t__ GMAC_VERSION ;
 int PMT_SUPPORTED ;
 int gmac_driver ;
 struct mac_device_info* kzalloc (int,int ) ;
 int pr_info (char*,int,int) ;
 int readl (scalar_t__) ;

struct mac_device_info *gmac_setup(unsigned long ioaddr)
{
 struct mac_device_info *mac;
 u32 uid = readl(ioaddr + GMAC_VERSION);

 pr_info("\tGMAC - user ID: 0x%x, Synopsys ID: 0x%x\n",
        ((uid & 0x0000ff00) >> 8), (uid & 0x000000ff));

 mac = kzalloc(sizeof(const struct mac_device_info), GFP_KERNEL);

 mac->ops = &gmac_driver;
 mac->hw.pmt = PMT_SUPPORTED;
 mac->hw.link.port = GMAC_CONTROL_PS;
 mac->hw.link.duplex = GMAC_CONTROL_DM;
 mac->hw.link.speed = GMAC_CONTROL_FES;
 mac->hw.mii.addr = GMAC_MII_ADDR;
 mac->hw.mii.data = GMAC_MII_DATA;

 return mac;
}
