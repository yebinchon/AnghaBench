
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void u8 ;
struct TYPE_5__ {unsigned int len; int cmd; } ;
struct TYPE_7__ {scalar_t__ data; TYPE_1__ hdr; } ;
struct ar9170 {unsigned int readlen; int cmd_lock; int * readbuf; TYPE_3__ cmd; TYPE_2__* udev; int cmd_wait; } ;
typedef enum carl9170_cmd_oids { ____Placeholder_carl9170_cmd_oids } carl9170_cmd_oids ;
struct TYPE_6__ {int dev; } ;


 int const CARL9170_CMD_ASYNC_FLAG ;
 int CARL9170_RR_COMMAND_TIMEOUT ;
 int DUMP_PREFIX_NONE ;
 int EIO ;
 int EMSGSIZE ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int HZ ;
 int IS_ACCEPTING_CMD (struct ar9170*) ;
 scalar_t__ IS_STARTED (struct ar9170*) ;
 int __carl9170_exec_cmd (struct ar9170*,TYPE_3__*,int) ;
 int carl9170_restart (struct ar9170*,int ) ;
 int dev_err (int *,char*,int) ;
 int memcpy (scalar_t__,void*,unsigned int) ;
 int might_sleep () ;
 int print_hex_dump_bytes (char*,int ,TYPE_3__*,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

int carl9170_exec_cmd(struct ar9170 *ar, const enum carl9170_cmd_oids cmd,
 unsigned int plen, void *payload, unsigned int outlen, void *out)
{
 int err = -ENOMEM;

 if (!IS_ACCEPTING_CMD(ar))
  return -EIO;

 if (!(cmd & CARL9170_CMD_ASYNC_FLAG))
  might_sleep();

 ar->cmd.hdr.len = plen;
 ar->cmd.hdr.cmd = cmd;

 if (plen && payload != (u8 *)(ar->cmd.data))
  memcpy(ar->cmd.data, payload, plen);

 spin_lock_bh(&ar->cmd_lock);
 ar->readbuf = (u8 *)out;
 ar->readlen = outlen;
 spin_unlock_bh(&ar->cmd_lock);

 err = __carl9170_exec_cmd(ar, &ar->cmd, 0);

 if (!(cmd & CARL9170_CMD_ASYNC_FLAG)) {
  err = wait_for_completion_timeout(&ar->cmd_wait, HZ);
  if (err == 0) {
   err = -ETIMEDOUT;
   goto err_unbuf;
  }

  if (ar->readlen != outlen) {
   err = -EMSGSIZE;
   goto err_unbuf;
  }
 }

 return 0;

err_unbuf:

 if (IS_STARTED(ar)) {
  dev_err(&ar->udev->dev, "no command feedback "
   "received (%d).\n", err);


  print_hex_dump_bytes("carl9170 cmd: ", DUMP_PREFIX_NONE,
         &ar->cmd, plen + 4);

  carl9170_restart(ar, CARL9170_RR_COMMAND_TIMEOUT);
 }


 spin_lock_bh(&ar->cmd_lock);
 ar->readbuf = ((void*)0);
 ar->readlen = 0;
 spin_unlock_bh(&ar->cmd_lock);

 return err;
}
