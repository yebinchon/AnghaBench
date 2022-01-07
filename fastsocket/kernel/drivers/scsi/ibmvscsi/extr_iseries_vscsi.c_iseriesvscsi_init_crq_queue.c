
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int dummy; } ;
struct crq_queue {int dummy; } ;


 int iseriesvscsi_handle_event ;
 int printk (char*,int) ;
 struct ibmvscsi_host_data* single_host_data ;
 int vio_setHandler (int ,int ) ;
 int viomajorsubtype_scsi ;
 int viopath_close (int ,int ,int) ;
 int viopath_hostLp ;
 int viopath_open (int ,int ,int) ;

__attribute__((used)) static int iseriesvscsi_init_crq_queue(struct crq_queue *queue,
           struct ibmvscsi_host_data *hostdata,
           int max_requests)
{
 int rc;

 single_host_data = hostdata;
 rc = viopath_open(viopath_hostLp, viomajorsubtype_scsi, max_requests);
 if (rc < 0) {
  printk("viopath_open failed with rc %d in open_event_path\n",
         rc);
  goto viopath_open_failed;
 }

 rc = vio_setHandler(viomajorsubtype_scsi, iseriesvscsi_handle_event);
 if (rc < 0) {
  printk("vio_setHandler failed with rc %d in open_event_path\n",
         rc);
  goto vio_setHandler_failed;
 }
 return 0;

      vio_setHandler_failed:
 viopath_close(viopath_hostLp, viomajorsubtype_scsi, max_requests);
      viopath_open_failed:
 return -1;
}
