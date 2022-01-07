
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igb_adapter {int dummy; } ;


 int igb_set_vf_mac (struct igb_adapter*,int,unsigned char*) ;
 scalar_t__ is_valid_ether_addr (unsigned char*) ;

__attribute__((used)) static int igb_set_vf_mac_addr(struct igb_adapter *adapter, u32 *msg, int vf)
{



 unsigned char *addr = (char *)&msg[1];
 int err = -1;

 if (is_valid_ether_addr(addr))
  err = igb_set_vf_mac(adapter, vf, addr);

 return err;
}
