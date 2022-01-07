
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viosrp_crq {int valid; } ;
struct vio_dev {int dummy; } ;
struct ibmvscsi_host_data {int queue; int dev; } ;


 struct viosrp_crq* crq_queue_next_crq (int *) ;
 int ibmvscsi_handle_crq (struct viosrp_crq*,struct ibmvscsi_host_data*) ;
 struct vio_dev* to_vio_dev (int ) ;
 int vio_disable_interrupts (struct vio_dev*) ;
 int vio_enable_interrupts (struct vio_dev*) ;

__attribute__((used)) static void rpavscsi_task(void *data)
{
 struct ibmvscsi_host_data *hostdata = (struct ibmvscsi_host_data *)data;
 struct vio_dev *vdev = to_vio_dev(hostdata->dev);
 struct viosrp_crq *crq;
 int done = 0;

 while (!done) {

  while ((crq = crq_queue_next_crq(&hostdata->queue)) != ((void*)0)) {
   ibmvscsi_handle_crq(crq, hostdata);
   crq->valid = 0x00;
  }

  vio_enable_interrupts(vdev);
  if ((crq = crq_queue_next_crq(&hostdata->queue)) != ((void*)0)) {
   vio_disable_interrupts(vdev);
   ibmvscsi_handle_crq(crq, hostdata);
   crq->valid = 0x00;
  } else {
   done = 1;
  }
 }
}
