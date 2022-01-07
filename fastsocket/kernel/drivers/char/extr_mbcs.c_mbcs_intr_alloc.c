
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sn_irq_info {int irq_irq; int irq_xtalkaddr; } ;
struct putdma {int intrVector; int intrHostDest; } ;
struct algoblock {int intrVector; int intrHostDest; } ;
struct getdma {int intrVector; int intrHostDest; } ;
struct mbcs_soft {struct sn_irq_info* get_sn_irq; struct sn_irq_info* put_sn_irq; struct sn_irq_info* algo_sn_irq; struct algoblock algo; struct putdma putdma; struct getdma getdma; } ;
struct TYPE_2__ {int nasid; } ;
struct cx_dev {TYPE_1__ cx_id; struct mbcs_soft* soft; } ;


 int EAGAIN ;
 int IRQF_SHARED ;
 int TIOCX_CORELET ;
 int free_irq (int ,struct mbcs_soft*) ;
 scalar_t__ mbcs_completion_intr_handler ;
 scalar_t__ request_irq (int ,void*,int ,char*,void*) ;
 struct sn_irq_info* tiocx_irq_alloc (int ,int ,int,int,int) ;
 int tiocx_irq_free (struct sn_irq_info*) ;

__attribute__((used)) static int mbcs_intr_alloc(struct cx_dev *dev)
{
 struct sn_irq_info *sn_irq;
 struct mbcs_soft *soft;
 struct getdma *getdma;
 struct putdma *putdma;
 struct algoblock *algo;

 soft = dev->soft;
 getdma = &soft->getdma;
 putdma = &soft->putdma;
 algo = &soft->algo;

 soft->get_sn_irq = ((void*)0);
 soft->put_sn_irq = ((void*)0);
 soft->algo_sn_irq = ((void*)0);

 sn_irq = tiocx_irq_alloc(dev->cx_id.nasid, TIOCX_CORELET, -1, -1, -1);
 if (sn_irq == ((void*)0))
  return -EAGAIN;
 soft->get_sn_irq = sn_irq;
 getdma->intrHostDest = sn_irq->irq_xtalkaddr;
 getdma->intrVector = sn_irq->irq_irq;
 if (request_irq(sn_irq->irq_irq,
   (void *)mbcs_completion_intr_handler, IRQF_SHARED,
   "MBCS get intr", (void *)soft)) {
  tiocx_irq_free(soft->get_sn_irq);
  return -EAGAIN;
 }

 sn_irq = tiocx_irq_alloc(dev->cx_id.nasid, TIOCX_CORELET, -1, -1, -1);
 if (sn_irq == ((void*)0)) {
  free_irq(soft->get_sn_irq->irq_irq, soft);
  tiocx_irq_free(soft->get_sn_irq);
  return -EAGAIN;
 }
 soft->put_sn_irq = sn_irq;
 putdma->intrHostDest = sn_irq->irq_xtalkaddr;
 putdma->intrVector = sn_irq->irq_irq;
 if (request_irq(sn_irq->irq_irq,
   (void *)mbcs_completion_intr_handler, IRQF_SHARED,
   "MBCS put intr", (void *)soft)) {
  tiocx_irq_free(soft->put_sn_irq);
  free_irq(soft->get_sn_irq->irq_irq, soft);
  tiocx_irq_free(soft->get_sn_irq);
  return -EAGAIN;
 }

 sn_irq = tiocx_irq_alloc(dev->cx_id.nasid, TIOCX_CORELET, -1, -1, -1);
 if (sn_irq == ((void*)0)) {
  free_irq(soft->put_sn_irq->irq_irq, soft);
  tiocx_irq_free(soft->put_sn_irq);
  free_irq(soft->get_sn_irq->irq_irq, soft);
  tiocx_irq_free(soft->get_sn_irq);
  return -EAGAIN;
 }
 soft->algo_sn_irq = sn_irq;
 algo->intrHostDest = sn_irq->irq_xtalkaddr;
 algo->intrVector = sn_irq->irq_irq;
 if (request_irq(sn_irq->irq_irq,
   (void *)mbcs_completion_intr_handler, IRQF_SHARED,
   "MBCS algo intr", (void *)soft)) {
  tiocx_irq_free(soft->algo_sn_irq);
  free_irq(soft->put_sn_irq->irq_irq, soft);
  tiocx_irq_free(soft->put_sn_irq);
  free_irq(soft->get_sn_irq->irq_irq, soft);
  tiocx_irq_free(soft->get_sn_irq);
  return -EAGAIN;
 }

 return 0;
}
