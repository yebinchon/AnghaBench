
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib {int dummy; } ;
struct aac_dev {int dummy; } ;
struct aac_close {void* cid; void* command; } ;


 int ContainerCommand ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int FsaNormal ;
 int VM_CloseAll ;
 struct fib* aac_fib_alloc (struct aac_dev*) ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int,int,int *,int *) ;
 void* cpu_to_le32 (int) ;
 scalar_t__ fib_data (struct fib*) ;

int aac_send_shutdown(struct aac_dev * dev)
{
 struct fib * fibctx;
 struct aac_close *cmd;
 int status;

 fibctx = aac_fib_alloc(dev);
 if (!fibctx)
  return -ENOMEM;
 aac_fib_init(fibctx);

 cmd = (struct aac_close *) fib_data(fibctx);

 cmd->command = cpu_to_le32(VM_CloseAll);
 cmd->cid = cpu_to_le32(0xfffffffe);

 status = aac_fib_send(ContainerCommand,
     fibctx,
     sizeof(struct aac_close),
     FsaNormal,
     -2 , 1,
     ((void*)0), ((void*)0));

 if (status >= 0)
  aac_fib_complete(fibctx);

 if (status != -ERESTARTSYS)
  aac_fib_free(fibctx);
 return status;
}
