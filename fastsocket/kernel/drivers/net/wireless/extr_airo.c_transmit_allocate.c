
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
typedef int txControl ;
struct airo_info {int sem; } ;
typedef int __le16 ;
struct TYPE_6__ {int parm0; int cmd; } ;
struct TYPE_5__ {int status; } ;
typedef TYPE_1__ Resp ;
typedef TYPE_2__ Cmd ;


 int BAP1 ;
 int CMD_ALLOCATETX ;
 int ERROR ;
 int EVACK ;
 int EVSTAT ;
 int EV_ALLOC ;
 int IN4500 (struct airo_info*,int ) ;
 int OUT4500 (struct airo_info*,int ,int) ;
 scalar_t__ SUCCESS ;
 int TXALLOCFID ;
 int TXCTL_802_11 ;
 int TXCTL_802_3 ;
 int TXCTL_ETHERNET ;
 int TXCTL_NORELEASE ;
 int TXCTL_TXEX ;
 int TXCTL_TXOK ;
 scalar_t__ bap_setup (struct airo_info*,int,int,int ) ;
 int bap_write (struct airo_info*,int *,int,int ) ;
 int cpu_to_le16 (int) ;
 scalar_t__ down_interruptible (int *) ;
 scalar_t__ issuecommand (struct airo_info*,TYPE_2__*,TYPE_1__*) ;
 int up (int *) ;

__attribute__((used)) static u16 transmit_allocate(struct airo_info *ai, int lenPayload, int raw)
{
 unsigned int loop = 3000;
 Cmd cmd;
 Resp rsp;
 u16 txFid;
 __le16 txControl;

 cmd.cmd = CMD_ALLOCATETX;
 cmd.parm0 = lenPayload;
 if (down_interruptible(&ai->sem))
  return ERROR;
 if (issuecommand(ai, &cmd, &rsp) != SUCCESS) {
  txFid = ERROR;
  goto done;
 }
 if ( (rsp.status & 0xFF00) != 0) {
  txFid = ERROR;
  goto done;
 }



 while (((IN4500(ai, EVSTAT) & EV_ALLOC) == 0) && --loop);
 if (!loop) {
  txFid = ERROR;
  goto done;
 }


 txFid = IN4500(ai, TXALLOCFID);
 OUT4500(ai, EVACK, EV_ALLOC);






 if (raw)
  txControl = cpu_to_le16(TXCTL_TXOK | TXCTL_TXEX | TXCTL_802_11
   | TXCTL_ETHERNET | TXCTL_NORELEASE);
 else
  txControl = cpu_to_le16(TXCTL_TXOK | TXCTL_TXEX | TXCTL_802_3
   | TXCTL_ETHERNET | TXCTL_NORELEASE);
 if (bap_setup(ai, txFid, 0x0008, BAP1) != SUCCESS)
  txFid = ERROR;
 else
  bap_write(ai, &txControl, sizeof(txControl), BAP1);

done:
 up(&ai->sem);

 return txFid;
}
