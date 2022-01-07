
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_port {int crq_work; int dma_dev; } ;
struct srp_target {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;
 struct vio_port* target_to_port (struct srp_target*) ;
 int vio_disable_interrupts (int ) ;
 int vtgtd ;

__attribute__((used)) static irqreturn_t ibmvstgt_interrupt(int dummy, void *data)
{
 struct srp_target *target = data;
 struct vio_port *vport = target_to_port(target);

 vio_disable_interrupts(vport->dma_dev);
 queue_work(vtgtd, &vport->crq_work);

 return IRQ_HANDLED;
}
