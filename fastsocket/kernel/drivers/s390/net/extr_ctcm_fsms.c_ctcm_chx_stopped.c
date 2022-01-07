
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsm_instance ;


 int CTC_STATE_STOPPED ;
 int ctcm_chx_cleanup (int *,int ,void*) ;

__attribute__((used)) static void ctcm_chx_stopped(fsm_instance *fi, int event, void *arg)
{
 ctcm_chx_cleanup(fi, CTC_STATE_STOPPED, arg);
}
