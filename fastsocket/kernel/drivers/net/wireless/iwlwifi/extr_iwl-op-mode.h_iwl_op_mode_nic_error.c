
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_op_mode {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* nic_error ) (struct iwl_op_mode*) ;} ;


 int stub1 (struct iwl_op_mode*) ;

__attribute__((used)) static inline void iwl_op_mode_nic_error(struct iwl_op_mode *op_mode)
{
 op_mode->ops->nic_error(op_mode);
}
