
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read32 ) (struct iwl_trans*,int ) ;} ;


 int stub1 (struct iwl_trans*,int ) ;

__attribute__((used)) static inline u32 iwl_trans_read32(struct iwl_trans *trans, u32 ofs)
{
 return trans->ops->read32(trans, ofs);
}
