
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xiocb_cpuctl {int dummy; } ;
struct TYPE_3__ {int cpu_number; int cpu_command; } ;
struct TYPE_4__ {TYPE_1__ xiocb_cpuctl; } ;
struct cfe_xiocb {int xiocb_status; int xiocb_psize; TYPE_2__ plist; scalar_t__ xiocb_flags; scalar_t__ xiocb_handle; int xiocb_fcode; } ;


 int CFE_CMD_FW_CPUCTL ;
 int CFE_CPU_CMD_STOP ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;

int cfe_cpu_stop(int cpu)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_FW_CPUCTL;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = 0;
 xiocb.xiocb_flags = 0;
 xiocb.xiocb_psize = sizeof(struct xiocb_cpuctl);
 xiocb.plist.xiocb_cpuctl.cpu_number = cpu;
 xiocb.plist.xiocb_cpuctl.cpu_command = CFE_CPU_CMD_STOP;

 cfe_iocb_dispatch(&xiocb);

 return xiocb.xiocb_status;
}
