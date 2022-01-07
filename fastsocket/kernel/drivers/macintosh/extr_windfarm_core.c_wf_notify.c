
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blocking_notifier_call_chain (int *,int,void*) ;
 int wf_client_list ;

__attribute__((used)) static inline void wf_notify(int event, void *param)
{
 blocking_notifier_call_chain(&wf_client_list, event, param);
}
