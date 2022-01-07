
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xiocb_time {int dummy; } ;
struct TYPE_3__ {scalar_t__ ticks; } ;
struct TYPE_4__ {TYPE_1__ xiocb_time; } ;
struct cfe_xiocb {int xiocb_psize; TYPE_2__ plist; scalar_t__ xiocb_flags; scalar_t__ xiocb_handle; scalar_t__ xiocb_status; int xiocb_fcode; } ;
typedef scalar_t__ int64_t ;


 int CFE_CMD_FW_GETTIME ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;

int64_t
cfe_getticks(void)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_FW_GETTIME;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = 0;
 xiocb.xiocb_flags = 0;
 xiocb.xiocb_psize = sizeof(struct xiocb_time);
 xiocb.plist.xiocb_time.ticks = 0;

 cfe_iocb_dispatch(&xiocb);

 return xiocb.plist.xiocb_time.ticks;

}
