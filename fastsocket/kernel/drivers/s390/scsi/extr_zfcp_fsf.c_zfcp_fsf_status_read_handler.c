
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_fsf_req {int status; struct fsf_status_read_buffer* data; struct zfcp_adapter* adapter; } ;
struct TYPE_6__ {int status_read_data; } ;
struct zfcp_adapter {int stat_work; int work_queue; int stat_miss; TYPE_3__ pool; int adapter_features; TYPE_1__* ccw_device; int dbf; } ;
struct TYPE_5__ {int * word; } ;
struct fsf_status_read_buffer {int status_type; int status_subtype; TYPE_2__ payload; } ;
struct TYPE_4__ {int dev; } ;


 int FCH_EVT_LINKDOWN ;
 int FCH_EVT_LINKUP ;
 int FSF_STATUS_READ_SUB_ACT_UPDATED ;
 int FSF_STATUS_READ_SUB_INCOMING_ELS ;
 int ZFCP_SET ;
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_FSFREQ_DISMISSED ;
 int atomic_inc (int *) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int mempool_free (struct fsf_status_read_buffer*,int ) ;
 int queue_work (int ,int *) ;
 int zfcp_dbf_hba_berr (int ,struct zfcp_fsf_req*) ;
 int zfcp_dbf_hba_fsf_unsol (char*,int ,struct fsf_status_read_buffer*) ;
 int zfcp_erp_adapter_access_changed (struct zfcp_adapter*,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_modify_adapter_status (struct zfcp_adapter*,char*,int *,int ,int ) ;
 int zfcp_fc_conditional_port_scan (struct zfcp_adapter*) ;
 int zfcp_fc_enqueue_event (struct zfcp_adapter*,int ,int ) ;
 int zfcp_fc_incoming_els (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_status_read_link_down (struct zfcp_fsf_req*) ;
 int zfcp_fsf_status_read_port_closed (struct zfcp_fsf_req*) ;

__attribute__((used)) static void zfcp_fsf_status_read_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_adapter *adapter = req->adapter;
 struct fsf_status_read_buffer *sr_buf = req->data;

 if (req->status & ZFCP_STATUS_FSFREQ_DISMISSED) {
  zfcp_dbf_hba_fsf_unsol("dism", adapter->dbf, sr_buf);
  mempool_free(sr_buf, adapter->pool.status_read_data);
  zfcp_fsf_req_free(req);
  return;
 }

 zfcp_dbf_hba_fsf_unsol("read", adapter->dbf, sr_buf);

 switch (sr_buf->status_type) {
 case 129:
  zfcp_fsf_status_read_port_closed(req);
  break;
 case 133:
  zfcp_fc_incoming_els(req);
  break;
 case 128:
  break;
 case 136:
  dev_warn(&adapter->ccw_device->dev,
    "The error threshold for checksum statistics "
    "has been exceeded\n");
  zfcp_dbf_hba_berr(adapter->dbf, req);
  break;
 case 132:
  zfcp_fsf_status_read_link_down(req);
  zfcp_fc_enqueue_event(adapter, FCH_EVT_LINKDOWN, 0);
  break;
 case 131:
  dev_info(&adapter->ccw_device->dev,
    "The local link has been restored\n");

  zfcp_erp_modify_adapter_status(adapter, "fssrh_1", ((void*)0),
            ZFCP_STATUS_COMMON_RUNNING,
            ZFCP_SET);
  zfcp_erp_adapter_reopen(adapter,
     ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED |
     ZFCP_STATUS_COMMON_ERP_FAILED,
     "fssrh_2", req);
  zfcp_fc_enqueue_event(adapter, FCH_EVT_LINKUP, 0);

  break;
 case 130:
  if (sr_buf->status_subtype & FSF_STATUS_READ_SUB_ACT_UPDATED)
   zfcp_erp_adapter_access_changed(adapter, "fssrh_3",
       req);
  if (sr_buf->status_subtype & FSF_STATUS_READ_SUB_INCOMING_ELS)
   zfcp_fc_conditional_port_scan(adapter);
  break;
 case 135:
  zfcp_erp_adapter_access_changed(adapter, "fssrh_4", req);
  break;
 case 134:
  adapter->adapter_features = sr_buf->payload.word[0];
  break;
 }

 mempool_free(sr_buf, adapter->pool.status_read_data);
 zfcp_fsf_req_free(req);

 atomic_inc(&adapter->stat_miss);
 queue_work(adapter->work_queue, &adapter->stat_work);
}
