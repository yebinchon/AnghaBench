
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfe_xiocb {int xiocb_status; int xiocb_flags; scalar_t__ xiocb_psize; scalar_t__ xiocb_handle; int xiocb_fcode; } ;


 int CFE_CMD_FW_FLUSHCACHE ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;

int cfe_flushcache(int flg)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_FW_FLUSHCACHE;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = 0;
 xiocb.xiocb_flags = flg;
 xiocb.xiocb_psize = 0;

 cfe_iocb_dispatch(&xiocb);

 return xiocb.xiocb_status;
}
