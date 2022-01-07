
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {int channel; } ;
struct TYPE_14__ {int balloon; int hot_add; int hot_add_alignment; } ;
struct TYPE_15__ {TYPE_5__ cap_bits; } ;
struct TYPE_13__ {int size; void* trans_id; int type; } ;
struct TYPE_12__ {int version; } ;
struct dm_version_request {int max_page_number; scalar_t__ min_page_cnt; TYPE_6__ caps; TYPE_4__ hdr; scalar_t__ is_last_attempt; TYPE_3__ version; } ;
struct dm_capabilities {int max_page_number; scalar_t__ min_page_cnt; TYPE_6__ caps; TYPE_4__ hdr; scalar_t__ is_last_attempt; TYPE_3__ version; } ;
struct TYPE_11__ {int wrk; } ;
struct TYPE_10__ {int wrk; } ;
struct TYPE_16__ {scalar_t__ state; int host_specified_ha_region; int thread; int host_event; TYPE_2__ ha_wrk; TYPE_1__ balloon_wrk; int ha_region_list; int config_event; int next_version; struct hv_device* dev; } ;


 int DM_CAPABILITIES_REPORT ;
 scalar_t__ DM_INITIALIZED ;
 scalar_t__ DM_INITIALIZING ;
 scalar_t__ DM_INIT_ERROR ;
 int DM_VERSION_REQUEST ;
 int DYNMEM_PROTOCOL_VERSION_WIN7 ;
 int DYNMEM_PROTOCOL_VERSION_WIN8 ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int VM_PKT_DATA_INBAND ;
 void* atomic_inc_return (int *) ;
 int balloon_onchannelcallback ;
 int balloon_up ;
 TYPE_7__ dm_device ;
 int dm_ring_size ;
 int dm_thread_func ;
 int do_hot_add ;
 int hot_add ;
 int hot_add_req ;
 int hv_online_page ;
 int hv_set_drvdata (struct hv_device*,TYPE_7__*) ;
 int init_completion (int *) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 int kthread_run (int ,TYPE_7__*,char*) ;
 int kthread_stop (int ) ;
 int memset (struct dm_version_request*,int ,int) ;
 int restore_online_page_callback (int *) ;
 int send_buffer ;
 int set_online_page_callback (int *) ;
 int trans_id ;
 int vmbus_close (int ) ;
 int vmbus_open (int ,int ,int ,int *,int ,int ,struct hv_device*) ;
 int vmbus_sendpacket (int ,struct dm_version_request*,int,unsigned long,int ,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int balloon_probe(struct hv_device *dev,
   const struct hv_vmbus_device_id *dev_id)
{
 int ret, t;
 struct dm_version_request version_req;
 struct dm_capabilities cap_msg;

 do_hot_add = hot_add;





 send_buffer = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!send_buffer)
  return -ENOMEM;

 ret = vmbus_open(dev->channel, dm_ring_size, dm_ring_size, ((void*)0), 0,
   balloon_onchannelcallback, dev);

 if (ret) {
  goto probe_error0;
  return ret;
 }

 dm_device.dev = dev;
 dm_device.state = DM_INITIALIZING;
 dm_device.next_version = DYNMEM_PROTOCOL_VERSION_WIN7;
 init_completion(&dm_device.host_event);
 init_completion(&dm_device.config_event);
 INIT_LIST_HEAD(&dm_device.ha_region_list);
 INIT_WORK(&dm_device.balloon_wrk.wrk, balloon_up);
 INIT_WORK(&dm_device.ha_wrk.wrk, hot_add_req);
 dm_device.host_specified_ha_region = 0;

 dm_device.thread =
   kthread_run(dm_thread_func, &dm_device, "hv_balloon");
 if (IS_ERR(dm_device.thread)) {
  ret = PTR_ERR(dm_device.thread);
  goto probe_error1;
 }





 hv_set_drvdata(dev, &dm_device);






 memset(&version_req, 0, sizeof(struct dm_version_request));
 version_req.hdr.type = DM_VERSION_REQUEST;
 version_req.hdr.size = sizeof(struct dm_version_request);
 version_req.hdr.trans_id = atomic_inc_return(&trans_id);
 version_req.version.version = DYNMEM_PROTOCOL_VERSION_WIN8;
 version_req.is_last_attempt = 0;

 ret = vmbus_sendpacket(dev->channel, &version_req,
    sizeof(struct dm_version_request),
    (unsigned long)((void*)0),
    VM_PKT_DATA_INBAND, 0);
 if (ret)
  goto probe_error2;

 t = wait_for_completion_timeout(&dm_device.host_event, 5*HZ);
 if (t == 0) {
  ret = -ETIMEDOUT;
  goto probe_error2;
 }





 if (dm_device.state == DM_INIT_ERROR) {
  ret = -ETIMEDOUT;
  goto probe_error2;
 }



 memset(&cap_msg, 0, sizeof(struct dm_capabilities));
 cap_msg.hdr.type = DM_CAPABILITIES_REPORT;
 cap_msg.hdr.size = sizeof(struct dm_capabilities);
 cap_msg.hdr.trans_id = atomic_inc_return(&trans_id);

 cap_msg.caps.cap_bits.balloon = 1;
 cap_msg.caps.cap_bits.hot_add = 1;





 cap_msg.caps.cap_bits.hot_add_alignment = 7;






 cap_msg.min_page_cnt = 0;
 cap_msg.max_page_number = -1;

 ret = vmbus_sendpacket(dev->channel, &cap_msg,
    sizeof(struct dm_capabilities),
    (unsigned long)((void*)0),
    VM_PKT_DATA_INBAND, 0);
 if (ret)
  goto probe_error2;

 t = wait_for_completion_timeout(&dm_device.host_event, 5*HZ);
 if (t == 0) {
  ret = -ETIMEDOUT;
  goto probe_error2;
 }





 if (dm_device.state == DM_INIT_ERROR) {
  ret = -ETIMEDOUT;
  goto probe_error2;
 }

 dm_device.state = DM_INITIALIZED;

 return 0;

probe_error2:



 kthread_stop(dm_device.thread);

probe_error1:
 vmbus_close(dev->channel);
probe_error0:
 kfree(send_buffer);
 return ret;
}
