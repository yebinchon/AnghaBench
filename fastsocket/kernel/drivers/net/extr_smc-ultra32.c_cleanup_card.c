
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int base_addr; } ;
struct TYPE_2__ {int mem; } ;


 int ULTRA32_IO_EXTENT ;
 int ULTRA32_NIC_OFFSET ;
 TYPE_1__ ei_status ;
 int iounmap (int ) ;
 int release_region (int,int ) ;

__attribute__((used)) static void cleanup_card(struct net_device *dev)
{
 int ioaddr = dev->base_addr - ULTRA32_NIC_OFFSET;

 release_region(ioaddr, ULTRA32_IO_EXTENT);
 iounmap(ei_status.mem);
}
