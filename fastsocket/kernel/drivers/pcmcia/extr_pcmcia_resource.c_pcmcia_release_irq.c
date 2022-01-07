
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t AssignedIRQ; scalar_t__ Config; } ;
struct pcmcia_socket {TYPE_2__ irq; } ;
struct pcmcia_device {scalar_t__ _irq; TYPE_4__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_8__ {int Attributes; size_t AssignedIRQ; int Instance; } ;
typedef TYPE_3__ irq_req_t ;
struct TYPE_6__ {int Attributes; } ;
struct TYPE_9__ {int state; TYPE_1__ irq; } ;
typedef TYPE_4__ config_t ;


 int CONFIG_IRQ_REQ ;
 int CONFIG_LOCKED ;
 int EACCES ;
 int EINVAL ;
 int IRQ_HANDLE_PRESENT ;
 int ds_dbg (struct pcmcia_socket*,int ,char*) ;
 int free_irq (size_t,int ) ;
 int * pcmcia_used_irq ;

__attribute__((used)) static int pcmcia_release_irq(struct pcmcia_device *p_dev, irq_req_t *req)
{
 struct pcmcia_socket *s = p_dev->socket;
 config_t *c= p_dev->function_config;

 if (!p_dev->_irq)
  return -EINVAL;
 p_dev->_irq = 0;

 if (c->state & CONFIG_LOCKED)
  return -EACCES;
 if (c->irq.Attributes != req->Attributes) {
  ds_dbg(s, 0, "IRQ attributes must match assigned ones\n");
  return -EINVAL;
 }
 if (s->irq.AssignedIRQ != req->AssignedIRQ) {
  ds_dbg(s, 0, "IRQ must match assigned one\n");
  return -EINVAL;
 }
 if (--s->irq.Config == 0) {
  c->state &= ~CONFIG_IRQ_REQ;
  s->irq.AssignedIRQ = 0;
 }

 if (req->Attributes & IRQ_HANDLE_PRESENT) {
  free_irq(req->AssignedIRQ, req->Instance);
 }





 return 0;
}
