
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uuid_le ;
struct TYPE_8__ {int bytes_avail_towrite; int bytes_avail_toread; int current_write_index; int current_read_index; int current_interrupt_mask; } ;
struct TYPE_6__ {int bytes_avail_towrite; int bytes_avail_toread; int current_write_index; int current_read_index; int current_interrupt_mask; } ;
struct vmbus_channel_debug_info {TYPE_4__ outbound; TYPE_2__ inbound; int clientmonitor_connectionid; int clientmonitor_latency; int clientmonitor_pending; int servermonitor_connectionid; int servermonitor_latency; int servermonitor_pending; int monitorid; int interface_instance; int interfacetype; int state; int relid; } ;
struct TYPE_7__ {int bytes_avail_towrite; int bytes_avail_toread; int write_idx; int read_idx; int int_mask; } ;
struct TYPE_5__ {int bytes_avail_towrite; int bytes_avail_toread; int write_idx; int read_idx; int int_mask; } ;
struct hv_device_info {TYPE_3__ outbound; TYPE_1__ inbound; int client_monitor_conn_id; int client_monitor_latency; int client_monitor_pending; int server_monitor_conn_id; int server_monitor_latency; int server_monitor_pending; int monitor_id; int chn_instance; int chn_type; int chn_state; int chn_id; } ;
struct hv_device {int channel; } ;


 int memcpy (int *,int *,int) ;
 int vmbus_get_debug_info (int ,struct vmbus_channel_debug_info*) ;

__attribute__((used)) static void get_channel_info(struct hv_device *device,
        struct hv_device_info *info)
{
 struct vmbus_channel_debug_info debug_info;

 if (!device->channel)
  return;

 vmbus_get_debug_info(device->channel, &debug_info);

 info->chn_id = debug_info.relid;
 info->chn_state = debug_info.state;
 memcpy(&info->chn_type, &debug_info.interfacetype,
        sizeof(uuid_le));
 memcpy(&info->chn_instance, &debug_info.interface_instance,
        sizeof(uuid_le));

 info->monitor_id = debug_info.monitorid;

 info->server_monitor_pending = debug_info.servermonitor_pending;
 info->server_monitor_latency = debug_info.servermonitor_latency;
 info->server_monitor_conn_id = debug_info.servermonitor_connectionid;

 info->client_monitor_pending = debug_info.clientmonitor_pending;
 info->client_monitor_latency = debug_info.clientmonitor_latency;
 info->client_monitor_conn_id = debug_info.clientmonitor_connectionid;

 info->inbound.int_mask = debug_info.inbound.current_interrupt_mask;
 info->inbound.read_idx = debug_info.inbound.current_read_index;
 info->inbound.write_idx = debug_info.inbound.current_write_index;
 info->inbound.bytes_avail_toread =
  debug_info.inbound.bytes_avail_toread;
 info->inbound.bytes_avail_towrite =
  debug_info.inbound.bytes_avail_towrite;

 info->outbound.int_mask =
  debug_info.outbound.current_interrupt_mask;
 info->outbound.read_idx = debug_info.outbound.current_read_index;
 info->outbound.write_idx = debug_info.outbound.current_write_index;
 info->outbound.bytes_avail_toread =
  debug_info.outbound.bytes_avail_toread;
 info->outbound.bytes_avail_towrite =
  debug_info.outbound.bytes_avail_towrite;
}
