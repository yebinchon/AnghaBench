
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hermes_response {int status; int resp2; int resp1; int resp0; } ;
struct hermes {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* cmd_wait ) (struct hermes*,int ,int ,struct hermes_response*) ;int (* init_cmd_wait ) (struct hermes*,int,int ,int ,int ,int *) ;} ;


 int EIO ;
 int EVACK ;
 int HERMES_CMD_DOWNLD ;
 int HERMES_CMD_INIT ;
 int HERMES_PROGRAM_DISABLE ;
 int HERMES_STATUS_CMDCODE ;
 int hermes_aux_control (struct hermes*,int ) ;
 int hermes_write_regn (struct hermes*,int ,int) ;
 int pr_debug (char*,int,...) ;
 int stub1 (struct hermes*,int ,int ,struct hermes_response*) ;
 int stub2 (struct hermes*,int,int ,int ,int ,int *) ;

__attribute__((used)) static int hermesi_program_end(struct hermes *hw)
{
 struct hermes_response resp;
 int rc = 0;
 int err;

 rc = hw->ops->cmd_wait(hw, HERMES_PROGRAM_DISABLE, 0, &resp);

 pr_debug("PROGRAM_DISABLE returned %d, "
   "r0 0x%04x, r1 0x%04x, r2 0x%04x\n",
   rc, resp.resp0, resp.resp1, resp.resp2);

 if ((rc == 0) &&
     ((resp.status & HERMES_STATUS_CMDCODE) != HERMES_CMD_DOWNLD))
  rc = -EIO;

 err = hermes_aux_control(hw, 0);
 pr_debug("AUX disable returned %d\n", err);


 hermes_write_regn(hw, EVACK, 0xFFFF);


 (void) hw->ops->init_cmd_wait(hw, 0x0000 | HERMES_CMD_INIT,
          0, 0, 0, ((void*)0));

 return rc ? rc : err;
}
