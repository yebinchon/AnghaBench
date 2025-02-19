
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct airo_info {int dummy; } ;
typedef int cmd ;
struct TYPE_7__ {scalar_t__ parm0; scalar_t__ cmd; } ;
struct TYPE_6__ {int status; int rsp0; } ;
typedef TYPE_1__ Resp ;
typedef TYPE_2__ Cmd ;


 scalar_t__ issuecommand (struct airo_info*,TYPE_2__*,TYPE_1__*) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int PC4500_accessrid(struct airo_info *ai, u16 rid, u16 accmd)
{
 Cmd cmd;
 Resp rsp;
 u16 status;

 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd = accmd;
 cmd.parm0 = rid;
 status = issuecommand(ai, &cmd, &rsp);
 if (status != 0) return status;
 if ( (rsp.status & 0x7F00) != 0) {
  return (accmd << 8) + (rsp.rsp0 & 0xFF);
 }
 return 0;
}
