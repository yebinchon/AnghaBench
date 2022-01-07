
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; int addr; } ;
struct TYPE_4__ {scalar_t__ speed; int duplex; int port; } ;
struct TYPE_6__ {TYPE_2__ mii; TYPE_1__ link; int pmt; } ;
struct mac_device_info {TYPE_3__ hw; int * ops; } ;


 int GFP_KERNEL ;
 int MAC_CONTROL_F ;
 int MAC_CONTROL_PS ;
 int MAC_MII_ADDR ;
 int MAC_MII_DATA ;
 int PMT_NOT_SUPPORTED ;
 struct mac_device_info* kzalloc (int,int ) ;
 int mac100_driver ;
 int pr_info (char*) ;

struct mac_device_info *mac100_setup(unsigned long ioaddr)
{
 struct mac_device_info *mac;

 mac = kzalloc(sizeof(const struct mac_device_info), GFP_KERNEL);

 pr_info("\tMAC 10/100\n");

 mac->ops = &mac100_driver;
 mac->hw.pmt = PMT_NOT_SUPPORTED;
 mac->hw.link.port = MAC_CONTROL_PS;
 mac->hw.link.duplex = MAC_CONTROL_F;
 mac->hw.link.speed = 0;
 mac->hw.mii.addr = MAC_MII_ADDR;
 mac->hw.mii.data = MAC_MII_DATA;

 return mac;
}
