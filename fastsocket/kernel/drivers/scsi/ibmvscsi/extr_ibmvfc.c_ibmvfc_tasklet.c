
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {int dummy; } ;
struct ibmvfc_host {TYPE_1__* host; int dev; } ;
struct ibmvfc_crq {scalar_t__ valid; } ;
struct ibmvfc_async_crq {scalar_t__ valid; } ;
struct TYPE_2__ {int host_lock; } ;


 int ibmvfc_handle_async (struct ibmvfc_async_crq*,struct ibmvfc_host*) ;
 int ibmvfc_handle_crq (struct ibmvfc_crq*,struct ibmvfc_host*) ;
 struct ibmvfc_async_crq* ibmvfc_next_async_crq (struct ibmvfc_host*) ;
 struct ibmvfc_crq* ibmvfc_next_crq (struct ibmvfc_host*) ;
 int mb () ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct vio_dev* to_vio_dev (int ) ;
 int vio_disable_interrupts (struct vio_dev*) ;
 int vio_enable_interrupts (struct vio_dev*) ;

__attribute__((used)) static void ibmvfc_tasklet(void *data)
{
 struct ibmvfc_host *vhost = data;
 struct vio_dev *vdev = to_vio_dev(vhost->dev);
 struct ibmvfc_crq *crq;
 struct ibmvfc_async_crq *async;
 unsigned long flags;
 int done = 0;

 spin_lock_irqsave(vhost->host->host_lock, flags);
 while (!done) {

  while ((async = ibmvfc_next_async_crq(vhost)) != ((void*)0)) {
   ibmvfc_handle_async(async, vhost);
   mb();
   async->valid = 0;
  }


  while ((crq = ibmvfc_next_crq(vhost)) != ((void*)0)) {
   ibmvfc_handle_crq(crq, vhost);
   mb();
   crq->valid = 0;
  }

  vio_enable_interrupts(vdev);
  if ((async = ibmvfc_next_async_crq(vhost)) != ((void*)0)) {
   vio_disable_interrupts(vdev);
   ibmvfc_handle_async(async, vhost);
   mb();
   async->valid = 0;
  } else if ((crq = ibmvfc_next_crq(vhost)) != ((void*)0)) {
   vio_disable_interrupts(vdev);
   ibmvfc_handle_crq(crq, vhost);
   mb();
   crq->valid = 0;
  } else
   done = 1;
 }

 spin_unlock_irqrestore(vhost->host->host_lock, flags);
}
