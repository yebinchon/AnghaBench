
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int __iwl_read_prph (struct iwl_trans*,int) ;
 scalar_t__ iwl_trans_grab_nic_access (struct iwl_trans*,int,unsigned long*) ;
 int iwl_trans_release_nic_access (struct iwl_trans*,unsigned long*) ;

u32 iwl_read_prph(struct iwl_trans *trans, u32 ofs)
{
 unsigned long flags;
 u32 val = 0x5a5a5a5a;

 if (iwl_trans_grab_nic_access(trans, 0, &flags)) {
  val = __iwl_read_prph(trans, ofs);
  iwl_trans_release_nic_access(trans, &flags);
 }
 return val;
}
