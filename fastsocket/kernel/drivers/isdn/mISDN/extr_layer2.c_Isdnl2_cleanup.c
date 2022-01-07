
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEIFree () ;
 int X75SLP ;
 int l2fsm ;
 int mISDN_FsmFree (int *) ;
 int mISDN_unregister_Bprotocol (int *) ;

void
Isdnl2_cleanup(void)
{
 mISDN_unregister_Bprotocol(&X75SLP);
 TEIFree();
 mISDN_FsmFree(&l2fsm);
}
