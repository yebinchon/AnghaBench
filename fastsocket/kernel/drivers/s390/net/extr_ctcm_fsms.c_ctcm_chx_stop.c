
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsm_instance ;


 int CTC_STATE_STOPPED ;
 int fsm_newstate (int *,int ) ;

__attribute__((used)) static void ctcm_chx_stop(fsm_instance *fi, int event, void *arg)
{
 fsm_newstate(fi, CTC_STATE_STOPPED);
}
