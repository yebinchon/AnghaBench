
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xiocb_exitstat {int dummy; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ xiocb_exitstat; } ;
struct cfe_xiocb {int xiocb_status; int xiocb_psize; TYPE_2__ plist; int xiocb_flags; scalar_t__ xiocb_handle; int xiocb_fcode; } ;


 int CFE_CMD_FW_RESTART ;
 int CFE_FLG_WARMSTART ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;

int cfe_exit(int warm, int status)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_FW_RESTART;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = 0;
 xiocb.xiocb_flags = warm ? CFE_FLG_WARMSTART : 0;
 xiocb.xiocb_psize = sizeof(struct xiocb_exitstat);
 xiocb.plist.xiocb_exitstat.status = status;

 cfe_iocb_dispatch(&xiocb);

 return xiocb.xiocb_status;
}
