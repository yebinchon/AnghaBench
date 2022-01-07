
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CmdBlk {int dummy; } ;


 int GFP_ATOMIC ;
 struct CmdBlk* kzalloc (int,int ) ;

struct CmdBlk *RIOGetCmdBlk(void)
{
 struct CmdBlk *CmdBlkP;

 CmdBlkP = kzalloc(sizeof(struct CmdBlk), GFP_ATOMIC);
 return CmdBlkP;
}
