
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {int state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop_device ) (struct iwl_trans*) ;} ;


 int IWL_TRANS_NO_FW ;
 int might_sleep () ;
 int stub1 (struct iwl_trans*) ;

__attribute__((used)) static inline void iwl_trans_stop_device(struct iwl_trans *trans)
{
 might_sleep();

 trans->ops->stop_device(trans);

 trans->state = IWL_TRANS_NO_FW;
}
