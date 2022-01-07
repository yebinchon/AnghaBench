
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_op_mode {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop ) (struct iwl_op_mode*) ;} ;


 int might_sleep () ;
 int stub1 (struct iwl_op_mode*) ;

__attribute__((used)) static inline void iwl_op_mode_stop(struct iwl_op_mode *op_mode)
{
 might_sleep();
 op_mode->ops->stop(op_mode);
}
