
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int iwl_trans_write_mem (struct iwl_trans*,int ,int *,int) ;

__attribute__((used)) static inline u32 iwl_trans_write_mem32(struct iwl_trans *trans, u32 addr,
     u32 val)
{
 return iwl_trans_write_mem(trans, addr, &val, 1);
}
