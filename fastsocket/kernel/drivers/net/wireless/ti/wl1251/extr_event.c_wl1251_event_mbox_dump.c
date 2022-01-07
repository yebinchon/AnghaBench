
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_mailbox {int events_mask; int events_vector; } ;


 int DEBUG_EVENT ;
 int wl1251_debug (int ,char*,...) ;

__attribute__((used)) static void wl1251_event_mbox_dump(struct event_mailbox *mbox)
{
 wl1251_debug(DEBUG_EVENT, "MBOX DUMP:");
 wl1251_debug(DEBUG_EVENT, "\tvector: 0x%x", mbox->events_vector);
 wl1251_debug(DEBUG_EVENT, "\tmask: 0x%x", mbox->events_mask);
}
