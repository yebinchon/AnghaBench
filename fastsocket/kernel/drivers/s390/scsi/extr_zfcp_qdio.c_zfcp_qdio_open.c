
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int count; scalar_t__ first; } ;
struct TYPE_6__ {TYPE_1__** sbal; } ;
struct zfcp_qdio {int max_sbale_per_sbal; int max_sbale_per_req; TYPE_3__ req_q; TYPE_2__ resp_q; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {TYPE_4__* scsi_host; int status; struct ccw_device* ccw_device; } ;
struct qdio_ssqd_desc {int qdioac2; } ;
struct qdio_initialize {int cdev; } ;
struct qdio_buffer_element {int * addr; scalar_t__ sflags; int eflags; scalar_t__ length; } ;
struct ccw_device {int dev; } ;
struct TYPE_8__ {int sg_tablesize; int max_sectors; } ;
struct TYPE_5__ {struct qdio_buffer_element* element; } ;


 int CHSC_AC2_DATA_DIV_ENABLED ;
 int CHSC_AC2_MULTI_BUFFER_ENABLED ;
 int EIO ;
 int FSF_MAX_SBALS_PER_REQ ;
 int QDIO_FLAG_CLEANUP_USING_CLEAR ;
 int QDIO_FLAG_SYNC_INPUT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 void* QDIO_MAX_ELEMENTS_PER_BUFFER ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED ;
 int ZFCP_STATUS_ADAPTER_MB_ACT ;
 int ZFCP_STATUS_ADAPTER_QDIOUP ;
 int ZFCP_STATUS_ADAPTER_SIOSL_ISSUED ;
 int atomic_clear_mask (int ,int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int atomic_set_mask (int ,int *) ;
 int dev_err (int *,char*) ;
 scalar_t__ do_QDIO (struct ccw_device*,int ,int ,int ,int) ;
 scalar_t__ qdio_activate (struct ccw_device*) ;
 scalar_t__ qdio_establish (struct qdio_initialize*) ;
 scalar_t__ qdio_get_ssqd_desc (int ,struct qdio_ssqd_desc*) ;
 int qdio_shutdown (struct ccw_device*,int ) ;
 int zfcp_qdio_setup_init_data (struct qdio_initialize*,struct zfcp_qdio*) ;

int zfcp_qdio_open(struct zfcp_qdio *qdio)
{
 struct qdio_buffer_element *sbale;
 struct qdio_initialize init_data;
 struct zfcp_adapter *adapter = qdio->adapter;
 struct ccw_device *cdev = adapter->ccw_device;
 struct qdio_ssqd_desc ssqd;
 int cc;

 if (atomic_read(&adapter->status) & ZFCP_STATUS_ADAPTER_QDIOUP)
  return -EIO;

 atomic_clear_mask(ZFCP_STATUS_ADAPTER_SIOSL_ISSUED,
     &qdio->adapter->status);

 zfcp_qdio_setup_init_data(&init_data, qdio);

 if (qdio_establish(&init_data))
  goto failed_establish;

 if (qdio_get_ssqd_desc(init_data.cdev, &ssqd))
  goto failed_qdio;

 if (ssqd.qdioac2 & CHSC_AC2_DATA_DIV_ENABLED)
  atomic_set_mask(ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED,
    &qdio->adapter->status);

 if (ssqd.qdioac2 & CHSC_AC2_MULTI_BUFFER_ENABLED) {
  atomic_set_mask(ZFCP_STATUS_ADAPTER_MB_ACT, &adapter->status);
  qdio->max_sbale_per_sbal = QDIO_MAX_ELEMENTS_PER_BUFFER;
 } else {
  atomic_clear_mask(ZFCP_STATUS_ADAPTER_MB_ACT, &adapter->status);
  qdio->max_sbale_per_sbal = QDIO_MAX_ELEMENTS_PER_BUFFER - 1;
 }

 qdio->max_sbale_per_req =
  FSF_MAX_SBALS_PER_REQ * qdio->max_sbale_per_sbal
  - 2;
 if (qdio_activate(cdev))
  goto failed_qdio;

 for (cc = 0; cc < QDIO_MAX_BUFFERS_PER_Q; cc++) {
  sbale = &(qdio->resp_q.sbal[cc]->element[0]);
  sbale->length = 0;
  sbale->eflags = SBAL_EFLAGS_LAST_ENTRY;
  sbale->sflags = 0;
  sbale->addr = ((void*)0);
 }

 if (do_QDIO(cdev, QDIO_FLAG_SYNC_INPUT, 0, 0,
       QDIO_MAX_BUFFERS_PER_Q))
  goto failed_qdio;


 qdio->req_q.first = 0;
 atomic_set(&qdio->req_q.count, QDIO_MAX_BUFFERS_PER_Q);

 if (adapter->scsi_host) {
  adapter->scsi_host->sg_tablesize = qdio->max_sbale_per_req;
  adapter->scsi_host->max_sectors = qdio->max_sbale_per_req * 8;
 }

 return 0;

failed_qdio:
 qdio_shutdown(cdev, QDIO_FLAG_CLEANUP_USING_CLEAR);
failed_establish:
 dev_err(&cdev->dev,
  "Setting up the QDIO connection to the FCP adapter failed\n");
 return -EIO;
}
