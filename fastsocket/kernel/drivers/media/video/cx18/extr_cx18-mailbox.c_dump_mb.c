
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_mailbox {int args; int error; int cmd; int ack; int request; } ;
struct cx18 {int dummy; } ;


 int CX18_DBGFLG_API ;
 int CX18_DEBUG_API (char*,char*,int ,int ,int ,int ,int ) ;
 int MAX_MB_ARGUMENTS ;
 int cx18_debug ;
 int u32arr2hex (int ,int,char*) ;

__attribute__((used)) static void dump_mb(struct cx18 *cx, struct cx18_mailbox *mb, char *name)
{
 char argstr[MAX_MB_ARGUMENTS*11+1];

 if (!(cx18_debug & CX18_DBGFLG_API))
  return;

 CX18_DEBUG_API("%s: req %#010x ack %#010x cmd %#010x err %#010x args%s"
         "\n", name, mb->request, mb->ack, mb->cmd, mb->error,
         u32arr2hex(mb->args, MAX_MB_ARGUMENTS, argstr));
}
