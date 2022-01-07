
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int bit_width; int port; } ;
struct TYPE_5__ {int reg; } ;
struct TYPE_6__ {TYPE_1__ io; TYPE_2__ msr; } ;
struct drv_cmd {int type; int val; TYPE_3__ addr; } ;
typedef int acpi_io_address ;


 int INTEL_MSR_RANGE ;


 int acpi_os_write_port (int ,int,int) ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void do_drv_write(void *_cmd)
{
 struct drv_cmd *cmd = _cmd;
 u32 lo, hi;

 switch (cmd->type) {
 case 129:
  rdmsr(cmd->addr.msr.reg, lo, hi);
  lo = (lo & ~INTEL_MSR_RANGE) | (cmd->val & INTEL_MSR_RANGE);
  wrmsr(cmd->addr.msr.reg, lo, hi);
  break;
 case 128:
  acpi_os_write_port((acpi_io_address)cmd->addr.io.port,
    cmd->val,
    (u32)cmd->addr.io.bit_width);
  break;
 default:
  break;
 }
}
