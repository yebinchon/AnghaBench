
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int unit_address; } ;
struct ibmvscsi_host_data {int dev; } ;
struct crq_queue {int dummy; } ;


 int H_BUSY ;
 int H_ENABLE_CRQ ;
 int H_IN_PROGRESS ;
 scalar_t__ H_IS_LONG_BUSY (int) ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int plpar_hcall_norets (int ,int ) ;
 struct vio_dev* to_vio_dev (int ) ;

__attribute__((used)) static int rpavscsi_reenable_crq_queue(struct crq_queue *queue,
           struct ibmvscsi_host_data *hostdata)
{
 int rc = 0;
 struct vio_dev *vdev = to_vio_dev(hostdata->dev);


 do {
  if (rc)
   msleep(100);
  rc = plpar_hcall_norets(H_ENABLE_CRQ, vdev->unit_address);
 } while ((rc == H_IN_PROGRESS) || (rc == H_BUSY) || (H_IS_LONG_BUSY(rc)));

 if (rc)
  dev_err(hostdata->dev, "Error %d enabling adapter\n", rc);
 return rc;
}
