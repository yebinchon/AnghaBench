
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int bit_width; int port; } ;
struct TYPE_4__ {int reg; } ;
struct TYPE_5__ {TYPE_3__ io; TYPE_1__ msr; } ;
struct drv_cmd {int type; TYPE_2__ addr; int val; } ;
typedef int acpi_io_address ;




 int acpi_os_read_port (int ,int *,int ) ;
 int rdmsr (int ,int ,int ) ;

__attribute__((used)) static void do_drv_read(void *_cmd)
{
 struct drv_cmd *cmd = _cmd;
 u32 h;

 switch (cmd->type) {
 case 129:
  rdmsr(cmd->addr.msr.reg, cmd->val, h);
  break;
 case 128:
  acpi_os_read_port((acpi_io_address)cmd->addr.io.port,
    &cmd->val,
    (u32)cmd->addr.io.bit_width);
  break;
 default:
  break;
 }
}
