
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xiocb_envbuf {int dummy; } ;
struct TYPE_3__ {void* val_length; void* val_ptr; void* name_length; void* name_ptr; scalar_t__ enum_idx; } ;
struct TYPE_4__ {TYPE_1__ xiocb_envbuf; } ;
struct cfe_xiocb {int xiocb_status; int xiocb_psize; TYPE_2__ plist; scalar_t__ xiocb_flags; scalar_t__ xiocb_handle; int xiocb_fcode; } ;


 int CFE_CMD_ENV_SET ;
 void* XPTR_FROM_NATIVE (char*) ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;
 void* strlen (char*) ;

int cfe_setenv(char *name, char *val)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_ENV_SET;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = 0;
 xiocb.xiocb_flags = 0;
 xiocb.xiocb_psize = sizeof(struct xiocb_envbuf);
 xiocb.plist.xiocb_envbuf.enum_idx = 0;
 xiocb.plist.xiocb_envbuf.name_ptr = XPTR_FROM_NATIVE(name);
 xiocb.plist.xiocb_envbuf.name_length = strlen(name);
 xiocb.plist.xiocb_envbuf.val_ptr = XPTR_FROM_NATIVE(val);
 xiocb.plist.xiocb_envbuf.val_length = strlen(val);

 cfe_iocb_dispatch(&xiocb);

 return xiocb.xiocb_status;
}
