
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct airo_info {int flags; int sem; int jobs; } ;
typedef int cmd ;
struct TYPE_4__ {int parm0; int cmd; } ;
typedef int Resp ;
typedef TYPE_1__ Cmd ;


 int CMD_SETMODE ;
 int IFF_PROMISC ;
 int JOB_PROMISC ;
 int NOPROMISC ;
 int PROMISC ;
 int clear_bit (int ,int *) ;
 int issuecommand (struct airo_info*,TYPE_1__*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int up (int *) ;

__attribute__((used)) static void airo_set_promisc(struct airo_info *ai) {
 Cmd cmd;
 Resp rsp;

 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd=CMD_SETMODE;
 clear_bit(JOB_PROMISC, &ai->jobs);
 cmd.parm0=(ai->flags&IFF_PROMISC) ? PROMISC : NOPROMISC;
 issuecommand(ai, &cmd, &rsp);
 up(&ai->sem);
}
