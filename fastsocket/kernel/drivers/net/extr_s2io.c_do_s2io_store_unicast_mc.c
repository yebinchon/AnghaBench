
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct config_param {int max_mc_addr; } ;
struct s2io_nic {struct config_param config; } ;


 scalar_t__ FAILURE ;
 scalar_t__ S2IO_DISABLE_MAC_ENTRY ;
 int do_s2io_copy_mac_addr (struct s2io_nic*,int,scalar_t__) ;
 scalar_t__ do_s2io_read_unicast_mc (struct s2io_nic*,int) ;

__attribute__((used)) static void do_s2io_store_unicast_mc(struct s2io_nic *sp)
{
 int offset;
 u64 mac_addr = 0x0;
 struct config_param *config = &sp->config;


 for (offset = 0; offset < config->max_mc_addr; offset++) {
  mac_addr = do_s2io_read_unicast_mc(sp, offset);

  if (mac_addr == FAILURE)
   mac_addr = S2IO_DISABLE_MAC_ENTRY;
  do_s2io_copy_mac_addr(sp, offset, mac_addr);
 }
}
