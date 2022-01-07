
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hermes {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* cmd_wait ) (struct hermes*,int,int ,int *) ;} ;


 int HERMES_CMD_ENABLE ;
 int stub1 (struct hermes*,int,int ,int *) ;

__attribute__((used)) static inline int hermes_enable_port(struct hermes *hw, int port)
{
 return hw->ops->cmd_wait(hw, HERMES_CMD_ENABLE | (port << 8),
     0, ((void*)0));
}
