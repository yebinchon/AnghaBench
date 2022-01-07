
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmac {unsigned int nucast; } ;


 int EINVAL ;
 int set_addr_filter (struct cmac*,unsigned int,int *) ;

int t3_mac_set_address(struct cmac *mac, unsigned int idx, u8 addr[6])
{
 if (idx >= mac->nucast)
  return -EINVAL;
 set_addr_filter(mac, idx, addr);
 return 0;
}
