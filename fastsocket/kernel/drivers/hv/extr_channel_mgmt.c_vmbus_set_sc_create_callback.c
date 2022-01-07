
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {void (* sc_creation_callback ) (struct vmbus_channel*) ;} ;



void vmbus_set_sc_create_callback(struct vmbus_channel *primary_channel,
    void (*sc_cr_cb)(struct vmbus_channel *new_sc))
{
 primary_channel->sc_creation_callback = sc_cr_cb;
}
