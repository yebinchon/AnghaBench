
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FsmInst {int dummy; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int ST_WAIT_DRELEASE ;

__attribute__((used)) static void
lli_error(struct FsmInst *fi, int event, void *arg)
{
 FsmChangeState(fi, ST_WAIT_DRELEASE);
}
