
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_op_mode {TYPE_1__* ops; } ;
struct iwl_device_cmd {int dummy; } ;
struct TYPE_2__ {int (* rx ) (struct iwl_op_mode*,struct iwl_rx_cmd_buffer*,struct iwl_device_cmd*) ;} ;


 int might_sleep () ;
 int stub1 (struct iwl_op_mode*,struct iwl_rx_cmd_buffer*,struct iwl_device_cmd*) ;

__attribute__((used)) static inline int iwl_op_mode_rx(struct iwl_op_mode *op_mode,
      struct iwl_rx_cmd_buffer *rxb,
      struct iwl_device_cmd *cmd)
{
 might_sleep();
 return op_mode->ops->rx(op_mode, rxb, cmd);
}
