
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int dummy; } ;
struct crq_queue {int dummy; } ;


 int vio_clearHandler (int ) ;
 int viomajorsubtype_scsi ;
 int viopath_close (int ,int ,int) ;
 int viopath_hostLp ;

__attribute__((used)) static void iseriesvscsi_release_crq_queue(struct crq_queue *queue,
        struct ibmvscsi_host_data *hostdata,
        int max_requests)
{
 vio_clearHandler(viomajorsubtype_scsi);
 viopath_close(viopath_hostLp, viomajorsubtype_scsi, max_requests);
}
