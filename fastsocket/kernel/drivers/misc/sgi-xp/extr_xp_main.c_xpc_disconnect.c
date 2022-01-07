
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_registration {int mutex; scalar_t__ idle_limit; scalar_t__ assigned_limit; scalar_t__ entry_size; scalar_t__ nentries; int * key; int * func; } ;
struct TYPE_2__ {int (* disconnect ) (int) ;} ;


 int DBUG_ON (int) ;
 int XPC_MAX_NCHANNELS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int) ;
 TYPE_1__ xpc_interface ;
 struct xpc_registration* xpc_registrations ;

void
xpc_disconnect(int ch_number)
{
 struct xpc_registration *registration;

 DBUG_ON(ch_number < 0 || ch_number >= XPC_MAX_NCHANNELS);

 registration = &xpc_registrations[ch_number];






 mutex_lock(&registration->mutex);


 if (registration->func == ((void*)0)) {
  mutex_unlock(&registration->mutex);
  return;
 }


 registration->func = ((void*)0);
 registration->key = ((void*)0);
 registration->nentries = 0;
 registration->entry_size = 0;
 registration->assigned_limit = 0;
 registration->idle_limit = 0;

 xpc_interface.disconnect(ch_number);

 mutex_unlock(&registration->mutex);

 return;
}
