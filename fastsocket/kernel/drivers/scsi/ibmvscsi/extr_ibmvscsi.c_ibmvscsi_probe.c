
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vio_device_id {int dummy; } ;
struct device {int dummy; } ;
struct vio_dev {struct device dev; } ;
struct srp_rport_identifiers {int roles; int port_id; } ;
struct srp_rport {int dummy; } ;
struct TYPE_3__ {int partition_name; } ;
struct ibmvscsi_host_data {struct srp_rport* work_thread; int queue; int pool; struct Scsi_Host* host; int request_limit; TYPE_1__ madapter_info; struct device* dev; int work_wait_q; int sent; } ;
struct Scsi_Host {int max_lun; int max_cmd_len; int max_channel; int max_id; int host_no; int max_sectors; int transportt; } ;
struct TYPE_4__ {int (* init_crq_queue ) (int *,struct ibmvscsi_host_data*,int ) ;scalar_t__ (* send_crq ) (struct ibmvscsi_host_data*,int ,int ) ;int (* release_crq_queue ) (int *,struct ibmvscsi_host_data*,int ) ;} ;


 unsigned long HZ ;
 int H_RESOURCE ;
 int IBMVSCSI_CRQ_INIT ;
 int IBMVSCSI_MAX_SECTORS_DEFAULT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct srp_rport*) ;
 int PTR_ERR (struct srp_rport*) ;
 int SRP_RPORT_ROLE_TARGET ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct ibmvscsi_host_data*) ;
 int driver_template ;
 TYPE_2__* ibmvscsi_ops ;
 int ibmvscsi_transport_template ;
 int ibmvscsi_work ;
 unsigned long init_timeout ;
 int init_waitqueue_head (int *) ;
 scalar_t__ initialize_event_pool (int *,int ,struct ibmvscsi_host_data*) ;
 unsigned long jiffies ;
 struct srp_rport* kthread_run (int ,struct ibmvscsi_host_data*,char*,char*,int ) ;
 int kthread_stop (struct srp_rport*) ;
 scalar_t__ map_persist_bufs (struct ibmvscsi_host_data*) ;
 int max_channel ;
 int max_events ;
 int max_id ;
 int memcpy (int ,int ,int) ;
 int memset (struct ibmvscsi_host_data*,int,int) ;
 int msleep (int) ;
 int release_event_pool (int *,struct ibmvscsi_host_data*) ;
 scalar_t__ scsi_add_host (struct Scsi_Host*,struct device*) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 struct ibmvscsi_host_data* shost_priv (struct Scsi_Host*) ;
 struct srp_rport* srp_rport_add (struct Scsi_Host*,struct srp_rport_identifiers*) ;
 int stub1 (int *,struct ibmvscsi_host_data*,int ) ;
 scalar_t__ stub2 (struct ibmvscsi_host_data*,int ,int ) ;
 int stub3 (int *,struct ibmvscsi_host_data*,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int unmap_persist_bufs (struct ibmvscsi_host_data*) ;

__attribute__((used)) static int ibmvscsi_probe(struct vio_dev *vdev, const struct vio_device_id *id)
{
 struct ibmvscsi_host_data *hostdata;
 struct Scsi_Host *host;
 struct device *dev = &vdev->dev;
 struct srp_rport_identifiers ids;
 struct srp_rport *rport;
 unsigned long wait_switch = 0;
 int rc;

 dev_set_drvdata(&vdev->dev, ((void*)0));

 host = scsi_host_alloc(&driver_template, sizeof(*hostdata));
 if (!host) {
  dev_err(&vdev->dev, "couldn't allocate host data\n");
  goto scsi_host_alloc_failed;
 }

 host->transportt = ibmvscsi_transport_template;
 hostdata = shost_priv(host);
 memset(hostdata, 0x00, sizeof(*hostdata));
 INIT_LIST_HEAD(&hostdata->sent);
 init_waitqueue_head(&hostdata->work_wait_q);
 hostdata->host = host;
 hostdata->dev = dev;
 atomic_set(&hostdata->request_limit, -1);
 hostdata->host->max_sectors = IBMVSCSI_MAX_SECTORS_DEFAULT;

 if (map_persist_bufs(hostdata)) {
  dev_err(&vdev->dev, "couldn't map persistent buffers\n");
  goto persist_bufs_failed;
 }

 hostdata->work_thread = kthread_run(ibmvscsi_work, hostdata, "%s_%d",
         "ibmvscsi", host->host_no);

 if (IS_ERR(hostdata->work_thread)) {
  dev_err(&vdev->dev, "couldn't initialize kthread. rc=%ld\n",
   PTR_ERR(hostdata->work_thread));
  goto init_crq_failed;
 }

 rc = ibmvscsi_ops->init_crq_queue(&hostdata->queue, hostdata, max_events);
 if (rc != 0 && rc != H_RESOURCE) {
  dev_err(&vdev->dev, "couldn't initialize crq. rc=%d\n", rc);
  goto kill_kthread;
 }
 if (initialize_event_pool(&hostdata->pool, max_events, hostdata) != 0) {
  dev_err(&vdev->dev, "couldn't initialize event pool\n");
  goto init_pool_failed;
 }

 host->max_lun = 8;
 host->max_id = max_id;
 host->max_channel = max_channel;
 host->max_cmd_len = 16;

 if (scsi_add_host(hostdata->host, hostdata->dev))
  goto add_host_failed;


 memcpy(ids.port_id, hostdata->madapter_info.partition_name,
        sizeof(ids.port_id));
 ids.roles = SRP_RPORT_ROLE_TARGET;
 rport = srp_rport_add(host, &ids);
 if (IS_ERR(rport))
  goto add_srp_port_failed;





 if (ibmvscsi_ops->send_crq(hostdata, IBMVSCSI_CRQ_INIT, 0) == 0
     || rc == H_RESOURCE) {






  for (wait_switch = jiffies + (init_timeout * HZ);
       time_before(jiffies, wait_switch) &&
       atomic_read(&hostdata->request_limit) < 2;) {

   msleep(10);
  }


  if (atomic_read(&hostdata->request_limit) > 0)
   scsi_scan_host(host);
 }

 dev_set_drvdata(&vdev->dev, hostdata);
 return 0;

      add_srp_port_failed:
 scsi_remove_host(hostdata->host);
      add_host_failed:
 release_event_pool(&hostdata->pool, hostdata);
      init_pool_failed:
 ibmvscsi_ops->release_crq_queue(&hostdata->queue, hostdata, max_events);
      kill_kthread:
      kthread_stop(hostdata->work_thread);
      init_crq_failed:
 unmap_persist_bufs(hostdata);
      persist_bufs_failed:
 scsi_host_put(host);
      scsi_host_alloc_failed:
 return -1;
}
