
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mISDNtimer ;
 int misc_deregister (int *) ;

void mISDN_timer_cleanup(void)
{
 misc_deregister(&mISDNtimer);
}
