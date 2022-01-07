
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uuid_le ;
typedef int u8 ;
struct vmbus_channel_debug_info {int outbound; int inbound; int clientmonitor_connectionid; int clientmonitor_latency; int clientmonitor_pending; int servermonitor_connectionid; int servermonitor_latency; int servermonitor_pending; scalar_t__ monitorid; int interface_instance; int interfacetype; int state; int relid; } ;
struct TYPE_8__ {int if_instance; int if_type; } ;
struct TYPE_9__ {scalar_t__ monitorid; TYPE_1__ offer; int child_relid; } ;
struct vmbus_channel {int outbound; int inbound; TYPE_2__ offermsg; int state; } ;
struct hv_monitor_page {TYPE_6__** parameter; int ** latency; TYPE_3__* trigger_group; } ;
struct TYPE_14__ {scalar_t__ monitor_pages; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_12__ {TYPE_4__ u; } ;
struct TYPE_13__ {TYPE_5__ connectionid; } ;
struct TYPE_10__ {int pending; } ;


 int hv_ringbuffer_get_debuginfo (int *,int *) ;
 int memcpy (int *,int *,int) ;
 TYPE_7__ vmbus_connection ;

void vmbus_get_debug_info(struct vmbus_channel *channel,
         struct vmbus_channel_debug_info *debuginfo)
{
 struct hv_monitor_page *monitorpage;
 u8 monitor_group = (u8)channel->offermsg.monitorid / 32;
 u8 monitor_offset = (u8)channel->offermsg.monitorid % 32;

 debuginfo->relid = channel->offermsg.child_relid;
 debuginfo->state = channel->state;
 memcpy(&debuginfo->interfacetype,
        &channel->offermsg.offer.if_type, sizeof(uuid_le));
 memcpy(&debuginfo->interface_instance,
        &channel->offermsg.offer.if_instance,
        sizeof(uuid_le));

 monitorpage = (struct hv_monitor_page *)vmbus_connection.monitor_pages;

 debuginfo->monitorid = channel->offermsg.monitorid;

 debuginfo->servermonitor_pending =
   monitorpage->trigger_group[monitor_group].pending;
 debuginfo->servermonitor_latency =
   monitorpage->latency[monitor_group][monitor_offset];
 debuginfo->servermonitor_connectionid =
   monitorpage->parameter[monitor_group]
     [monitor_offset].connectionid.u.id;

 monitorpage++;

 debuginfo->clientmonitor_pending =
   monitorpage->trigger_group[monitor_group].pending;
 debuginfo->clientmonitor_latency =
   monitorpage->latency[monitor_group][monitor_offset];
 debuginfo->clientmonitor_connectionid =
   monitorpage->parameter[monitor_group]
     [monitor_offset].connectionid.u.id;

 hv_ringbuffer_get_debuginfo(&channel->inbound, &debuginfo->inbound);
 hv_ringbuffer_get_debuginfo(&channel->outbound, &debuginfo->outbound);
}
