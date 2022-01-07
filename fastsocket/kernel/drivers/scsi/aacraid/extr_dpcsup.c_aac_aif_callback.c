
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_fib {int dummy; } ;
struct fib {TYPE_2__* hw_fib_va; struct aac_dev* dev; } ;
struct aac_fibhdr {int dummy; } ;
struct aac_dev {int dummy; } ;
struct aac_aifcmd {int command; } ;
typedef int fib_callback ;
struct TYPE_3__ {int XferState; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int AifReqEvent ;
 int AifRequest ;
 int BUG_ON (int ) ;
 int FsaNormal ;
 int NoMoreAifDataAvailable ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int ,int,int ,struct fib*) ;
 int aac_intr_normal (struct aac_dev*,int ,int,int ,TYPE_2__*) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ fib_data (struct fib*) ;

__attribute__((used)) static void aac_aif_callback(void *context, struct fib * fibptr)
{
 struct fib *fibctx;
 struct aac_dev *dev;
 struct aac_aifcmd *cmd;
 int status;

 fibctx = (struct fib *)context;
 BUG_ON(fibptr == ((void*)0));
 dev = fibptr->dev;

 if (fibptr->hw_fib_va->header.XferState &
     cpu_to_le32(NoMoreAifDataAvailable)) {
  aac_fib_complete(fibptr);
  aac_fib_free(fibptr);
  return;
 }

 aac_intr_normal(dev, 0, 1, 0, fibptr->hw_fib_va);
 aac_fib_init(fibctx);
 cmd = (struct aac_aifcmd *) fib_data(fibctx);
 cmd->command = cpu_to_le32(AifReqEvent);
 status = aac_fib_send(AifRequest,
  fibctx,
  sizeof(struct hw_fib)-sizeof(struct aac_fibhdr),
  FsaNormal,
  0, 1,
  (fib_callback)aac_aif_callback, fibctx);
}
