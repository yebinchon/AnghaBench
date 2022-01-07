
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nes_device {int dummy; } ;


 int NES_IDX_NIC_MULTICAST_ALL ;
 int NES_IDX_NIC_UNICAST_ALL ;
 int nes_read_indexed (struct nes_device*,int ) ;
 int nes_write_indexed (struct nes_device*,int ,int ) ;

__attribute__((used)) static void set_allmulti(struct nes_device *nesdev, u32 nic_active_bit)
{
 u32 nic_active;

 nic_active = nes_read_indexed(nesdev, NES_IDX_NIC_MULTICAST_ALL);
 nic_active |= nic_active_bit;
 nes_write_indexed(nesdev, NES_IDX_NIC_MULTICAST_ALL, nic_active);
 nic_active = nes_read_indexed(nesdev, NES_IDX_NIC_UNICAST_ALL);
 nic_active &= ~nic_active_bit;
 nes_write_indexed(nesdev, NES_IDX_NIC_UNICAST_ALL, nic_active);
}
