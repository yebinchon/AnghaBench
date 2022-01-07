
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_op_mode {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* hw_rf_kill ) (struct iwl_op_mode*,int) ;} ;


 int might_sleep () ;
 int stub1 (struct iwl_op_mode*,int) ;

__attribute__((used)) static inline void iwl_op_mode_hw_rf_kill(struct iwl_op_mode *op_mode,
       bool state)
{
 might_sleep();
 op_mode->ops->hw_rf_kill(op_mode, state);
}
