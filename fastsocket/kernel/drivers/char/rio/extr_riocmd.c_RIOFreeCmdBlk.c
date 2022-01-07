
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CmdBlk {int dummy; } ;


 int kfree (struct CmdBlk*) ;

void RIOFreeCmdBlk(struct CmdBlk *CmdBlkP)
{
 kfree(CmdBlkP);
}
