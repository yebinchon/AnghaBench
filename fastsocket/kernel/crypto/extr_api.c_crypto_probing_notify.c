
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOTIFY_DONE ;
 int blocking_notifier_call_chain (int *,unsigned long,void*) ;
 int crypto_chain ;
 int request_module (char*) ;

int crypto_probing_notify(unsigned long val, void *v)
{
 int ok;

 ok = blocking_notifier_call_chain(&crypto_chain, val, v);
 if (ok == NOTIFY_DONE) {
  request_module("cryptomgr");
  ok = blocking_notifier_call_chain(&crypto_chain, val, v);
 }

 return ok;
}
