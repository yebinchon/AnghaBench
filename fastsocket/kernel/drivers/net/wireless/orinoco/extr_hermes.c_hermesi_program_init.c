
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hermes {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* init_cmd_wait ) (struct hermes*,int,int,int,int ,int *) ;} ;


 int EVACK ;
 int HERMES_CMD_INIT ;
 int HERMES_PROGRAM_ENABLE_VOLATILE ;
 int hermes_aux_control (struct hermes*,int) ;
 int hermes_write_regn (struct hermes*,int ,int) ;
 int pr_debug (char*,int) ;
 int stub1 (struct hermes*,int,int,int,int ,int *) ;
 int stub2 (struct hermes*,int,int,int,int ,int *) ;
 int stub3 (struct hermes*,int,int,int,int ,int *) ;

__attribute__((used)) static int hermesi_program_init(struct hermes *hw, u32 offset)
{
 int err;







 hermes_write_regn(hw, EVACK, 0xFFFF);


 err = hw->ops->init_cmd_wait(hw,
         0x0100 | HERMES_CMD_INIT,
         0, 0, 0, ((void*)0));
 if (err)
  return err;

 err = hw->ops->init_cmd_wait(hw,
         0x0000 | HERMES_CMD_INIT,
         0, 0, 0, ((void*)0));
 if (err)
  return err;

 err = hermes_aux_control(hw, 1);
 pr_debug("AUX enable returned %d\n", err);

 if (err)
  return err;

 pr_debug("Enabling volatile, EP 0x%08x\n", offset);
 err = hw->ops->init_cmd_wait(hw,
         HERMES_PROGRAM_ENABLE_VOLATILE,
         offset & 0xFFFFu,
         offset >> 16,
         0,
         ((void*)0));
 pr_debug("PROGRAM_ENABLE returned %d\n", err);

 return err;
}
