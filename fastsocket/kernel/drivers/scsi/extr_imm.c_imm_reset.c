
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ phase; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct TYPE_9__ {int base; int * cur_cmd; } ;
typedef TYPE_3__ imm_struct ;
struct TYPE_7__ {int host; } ;


 int CONNECT_NORMAL ;
 int SUCCESS ;
 int imm_connect (TYPE_3__*,int ) ;
 TYPE_3__* imm_dev (int ) ;
 int imm_disconnect (TYPE_3__*) ;
 int imm_reset_pulse (int ) ;
 int mdelay (int) ;

__attribute__((used)) static int imm_reset(struct scsi_cmnd *cmd)
{
 imm_struct *dev = imm_dev(cmd->device->host);

 if (cmd->SCp.phase)
  imm_disconnect(dev);
 dev->cur_cmd = ((void*)0);

 imm_connect(dev, CONNECT_NORMAL);
 imm_reset_pulse(dev->base);
 mdelay(1);
 imm_disconnect(dev);
 mdelay(1);
 return SUCCESS;
}
