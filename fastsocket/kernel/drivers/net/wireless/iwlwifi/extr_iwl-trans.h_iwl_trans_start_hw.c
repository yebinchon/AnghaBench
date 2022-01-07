
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start_hw ) (struct iwl_trans*) ;} ;


 int might_sleep () ;
 int stub1 (struct iwl_trans*) ;

__attribute__((used)) static inline int iwl_trans_start_hw(struct iwl_trans *trans)
{
 might_sleep();

 return trans->ops->start_hw(trans);
}
