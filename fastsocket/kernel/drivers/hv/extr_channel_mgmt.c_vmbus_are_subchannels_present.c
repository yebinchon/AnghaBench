
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int sc_list; } ;


 int invoke_sc_cb (struct vmbus_channel*) ;
 int list_empty (int *) ;

bool vmbus_are_subchannels_present(struct vmbus_channel *primary)
{
 bool ret;

 ret = !list_empty(&primary->sc_list);

 if (ret) {





  invoke_sc_cb(primary);
 }

 return ret;
}
