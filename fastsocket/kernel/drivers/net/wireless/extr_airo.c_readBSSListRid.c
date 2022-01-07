
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct airo_info {int flags; int bssListRidLen; int bssListNext; int bssListFirst; int * list_bss_task; int sem; } ;
typedef int cmd ;
struct TYPE_4__ {int cmd; } ;
typedef int Resp ;
typedef TYPE_1__ Cmd ;
typedef int BSSListRid ;


 int CMD_LISTBSS ;
 int ENETDOWN ;
 int ERESTARTSYS ;
 int FLAG_RADIO_MASK ;
 int HZ ;
 int PC4500_readrid (struct airo_info*,int ,int *,int ,int) ;
 int * current ;
 scalar_t__ down_interruptible (int *) ;
 int issuecommand (struct airo_info*,TYPE_1__*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int schedule_timeout_uninterruptible (int) ;
 int up (int *) ;

__attribute__((used)) static int readBSSListRid(struct airo_info *ai, int first,
        BSSListRid *list)
{
 Cmd cmd;
 Resp rsp;

 if (first == 1) {
  if (ai->flags & FLAG_RADIO_MASK) return -ENETDOWN;
  memset(&cmd, 0, sizeof(cmd));
  cmd.cmd=CMD_LISTBSS;
  if (down_interruptible(&ai->sem))
   return -ERESTARTSYS;
  ai->list_bss_task = current;
  issuecommand(ai, &cmd, &rsp);
  up(&ai->sem);

  schedule_timeout_uninterruptible(3 * HZ);
  ai->list_bss_task = ((void*)0);
 }
 return PC4500_readrid(ai, first ? ai->bssListFirst : ai->bssListNext,
       list, ai->bssListRidLen, 1);
}
