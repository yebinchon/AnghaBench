
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subnet_prefix; } ;
union ib_gid {unsigned char* raw; TYPE_1__ global; } ;
typedef int u16 ;


 int cpu_to_be64 (int) ;

__attribute__((used)) static void ocrdma_build_sgid_mac(union ib_gid *sgid, unsigned char *mac_addr,
      bool is_vlan, u16 vlan_id)
{
 sgid->global.subnet_prefix = cpu_to_be64(0xfe80000000000000LL);
 sgid->raw[8] = mac_addr[0] ^ 2;
 sgid->raw[9] = mac_addr[1];
 sgid->raw[10] = mac_addr[2];
 if (is_vlan) {
  sgid->raw[11] = vlan_id >> 8;
  sgid->raw[12] = vlan_id & 0xff;
 } else {
  sgid->raw[11] = 0xff;
  sgid->raw[12] = 0xfe;
 }
 sgid->raw[13] = mac_addr[3];
 sgid->raw[14] = mac_addr[4];
 sgid->raw[15] = mac_addr[5];
}
