
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u64 ;
struct s2io_nic {TYPE_1__* def_mac_addr; } ;
struct TYPE_2__ {void** mac_addr; } ;



__attribute__((used)) static void do_s2io_copy_mac_addr(struct s2io_nic *sp, int offset, u64 mac_addr)
{
 sp->def_mac_addr[offset].mac_addr[5] = (u8) (mac_addr);
 sp->def_mac_addr[offset].mac_addr[4] = (u8) (mac_addr >> 8);
 sp->def_mac_addr[offset].mac_addr[3] = (u8) (mac_addr >> 16);
 sp->def_mac_addr[offset].mac_addr[2] = (u8) (mac_addr >> 24);
 sp->def_mac_addr[offset].mac_addr[1] = (u8) (mac_addr >> 32);
 sp->def_mac_addr[offset].mac_addr[0] = (u8) (mac_addr >> 40);
}
