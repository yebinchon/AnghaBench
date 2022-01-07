
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {char* name; unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; TYPE_3__* msix; TYPE_2__* msix_entry; struct net_device* napi; TYPE_1__* pdev; int vdev; struct net_device* netdev; } ;
struct enic {char* name; unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; TYPE_3__* msix; TYPE_2__* msix_entry; struct enic* napi; TYPE_1__* pdev; int vdev; struct enic* netdev; } ;
struct TYPE_6__ {char* devname; int requested; struct net_device* devid; int isr; } ;
struct TYPE_5__ {int vector; } ;
struct TYPE_4__ {int irq; } ;


 unsigned int ARRAY_SIZE (TYPE_3__*) ;
 int IRQF_SHARED ;



 int enic_free_intr (struct net_device*) ;
 int enic_isr_legacy ;
 int enic_isr_msi ;
 int enic_isr_msix_err ;
 int enic_isr_msix_notify ;
 int enic_isr_msix_rq ;
 int enic_isr_msix_wq ;
 unsigned int enic_msix_err_intr (struct net_device*) ;
 unsigned int enic_msix_notify_intr (struct net_device*) ;
 unsigned int enic_msix_rq_intr (struct net_device*,unsigned int) ;
 unsigned int enic_msix_wq_intr (struct net_device*,unsigned int) ;
 int request_irq (int ,int ,int ,char*,struct net_device*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int vnic_dev_get_intr_mode (int ) ;

__attribute__((used)) static int enic_request_intr(struct enic *enic)
{
 struct net_device *netdev = enic->netdev;
 unsigned int i, intr;
 int err = 0;

 switch (vnic_dev_get_intr_mode(enic->vdev)) {

 case 130:

  err = request_irq(enic->pdev->irq, enic_isr_legacy,
   IRQF_SHARED, netdev->name, netdev);
  break;

 case 129:

  err = request_irq(enic->pdev->irq, enic_isr_msi,
   0, netdev->name, enic);
  break;

 case 128:

  for (i = 0; i < enic->rq_count; i++) {
   intr = enic_msix_rq_intr(enic, i);
   snprintf(enic->msix[intr].devname,
    sizeof(enic->msix[intr].devname),
    "%.11s-rx-%d", netdev->name, i);
   enic->msix[intr].isr = enic_isr_msix_rq;
   enic->msix[intr].devid = &enic->napi[i];
  }

  for (i = 0; i < enic->wq_count; i++) {
   intr = enic_msix_wq_intr(enic, i);
   snprintf(enic->msix[intr].devname,
    sizeof(enic->msix[intr].devname),
    "%.11s-tx-%d", netdev->name, i);
   enic->msix[intr].isr = enic_isr_msix_wq;
   enic->msix[intr].devid = enic;
  }

  intr = enic_msix_err_intr(enic);
  snprintf(enic->msix[intr].devname,
   sizeof(enic->msix[intr].devname),
   "%.11s-err", netdev->name);
  enic->msix[intr].isr = enic_isr_msix_err;
  enic->msix[intr].devid = enic;

  intr = enic_msix_notify_intr(enic);
  snprintf(enic->msix[intr].devname,
   sizeof(enic->msix[intr].devname),
   "%.11s-notify", netdev->name);
  enic->msix[intr].isr = enic_isr_msix_notify;
  enic->msix[intr].devid = enic;

  for (i = 0; i < ARRAY_SIZE(enic->msix); i++)
   enic->msix[i].requested = 0;

  for (i = 0; i < enic->intr_count; i++) {
   err = request_irq(enic->msix_entry[i].vector,
    enic->msix[i].isr, 0,
    enic->msix[i].devname,
    enic->msix[i].devid);
   if (err) {
    enic_free_intr(enic);
    break;
   }
   enic->msix[i].requested = 1;
  }

  break;

 default:
  break;
 }

 return err;
}
