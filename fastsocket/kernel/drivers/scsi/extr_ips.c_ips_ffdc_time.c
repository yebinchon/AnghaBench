
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ reset_type; scalar_t__ reset_count; int command_id; void* op_code; } ;
struct TYPE_15__ {TYPE_1__ ffdc; } ;
struct TYPE_16__ {TYPE_2__ cmd; void** cdb; int timeout; } ;
typedef TYPE_3__ ips_scb_t ;
struct TYPE_17__ {int max_cmds; int last_ffdc; TYPE_3__* scbs; int host_num; } ;
typedef TYPE_4__ ips_ha_t ;


 int DEBUG_VAR (int,char*,int ,int ) ;
 void* IPS_CMD_FFDC ;
 int IPS_COMMAND_ID (TYPE_4__*,TYPE_3__*) ;
 int IPS_FFDC ;
 int METHOD_TRACE (char*,int) ;
 int ips_cmd_timeout ;
 int ips_fix_ffdc_time (TYPE_4__*,TYPE_3__*,int ) ;
 int ips_init_scb (TYPE_4__*,TYPE_3__*) ;
 int ips_name ;
 int ips_send_wait (TYPE_4__*,TYPE_3__*,int ,int ) ;

__attribute__((used)) static void
ips_ffdc_time(ips_ha_t * ha)
{
 ips_scb_t *scb;

 METHOD_TRACE("ips_ffdc_time", 1);

 DEBUG_VAR(1, "(%s%d) Sending time update.", ips_name, ha->host_num);

 scb = &ha->scbs[ha->max_cmds - 1];

 ips_init_scb(ha, scb);

 scb->timeout = ips_cmd_timeout;
 scb->cdb[0] = IPS_CMD_FFDC;
 scb->cmd.ffdc.op_code = IPS_CMD_FFDC;
 scb->cmd.ffdc.command_id = IPS_COMMAND_ID(ha, scb);
 scb->cmd.ffdc.reset_count = 0;
 scb->cmd.ffdc.reset_type = 0;


 ips_fix_ffdc_time(ha, scb, ha->last_ffdc);


 ips_send_wait(ha, scb, ips_cmd_timeout, IPS_FFDC);
}
