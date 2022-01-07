
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgb_hw {int num_mc_addrs; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int DEBUGOUT7 (char*,int,int ,int ,int ,int ,int ,int ) ;
 int IXGB_ETH_LENGTH_OF_ADDRESS ;
 int IXGB_MC_TBL_SIZE ;
 int IXGB_RAR_ENTRIES ;
 int IXGB_WRITE_REG_ARRAY (struct ixgb_hw*,int ,int,int ) ;
 int MTA ;
 int RA ;
 int ixgb_hash_mc_addr (struct ixgb_hw*,int *) ;
 int ixgb_mta_set (struct ixgb_hw*,int) ;
 int ixgb_rar_set (struct ixgb_hw*,int *,int) ;

void
ixgb_mc_addr_list_update(struct ixgb_hw *hw,
     u8 *mc_addr_list,
     u32 mc_addr_count,
     u32 pad)
{
 u32 hash_value;
 u32 i;
 u32 rar_used_count = 1;

 DEBUGFUNC("ixgb_mc_addr_list_update");


 hw->num_mc_addrs = mc_addr_count;


 DEBUGOUT(" Clearing RAR[1-15]\n");
 for (i = rar_used_count; i < IXGB_RAR_ENTRIES; i++) {
  IXGB_WRITE_REG_ARRAY(hw, RA, (i << 1), 0);
  IXGB_WRITE_REG_ARRAY(hw, RA, ((i << 1) + 1), 0);
 }


 DEBUGOUT(" Clearing MTA\n");
 for (i = 0; i < IXGB_MC_TBL_SIZE; i++)
  IXGB_WRITE_REG_ARRAY(hw, MTA, i, 0);


 for (i = 0; i < mc_addr_count; i++) {
  DEBUGOUT(" Adding the multicast addresses:\n");
  DEBUGOUT7(" MC Addr #%d =%.2X %.2X %.2X %.2X %.2X %.2X\n", i,
     mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad)],
     mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
           1],
     mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
           2],
     mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
           3],
     mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
           4],
     mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
           5]);




  if (rar_used_count < IXGB_RAR_ENTRIES) {
   ixgb_rar_set(hw,
         mc_addr_list +
         (i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad)),
         rar_used_count);
   DEBUGOUT1("Added a multicast address to RAR[%d]\n", i);
   rar_used_count++;
  } else {
   hash_value = ixgb_hash_mc_addr(hw,
             mc_addr_list +
             (i *
       (IXGB_ETH_LENGTH_OF_ADDRESS
        + pad)));

   DEBUGOUT1(" Hash value = 0x%03X\n", hash_value);

   ixgb_mta_set(hw, hash_value);
  }
 }

 DEBUGOUT("MC Update Complete\n");
 return;
}
