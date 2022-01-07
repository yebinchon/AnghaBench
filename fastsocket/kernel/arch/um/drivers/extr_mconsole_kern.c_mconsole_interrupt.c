
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mc_request {int regs; TYPE_1__* cmd; } ;
struct mconsole_entry {int list; struct mc_request request; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int regs; } ;
struct TYPE_3__ {scalar_t__ context; int (* handler ) (struct mc_request*) ;} ;


 int GFP_NOWAIT ;
 int IRQ_HANDLED ;
 scalar_t__ MCONSOLE_INTR ;
 int MCONSOLE_IRQ ;
 TYPE_2__* get_irq_regs () ;
 struct mconsole_entry* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int mc_requests ;
 scalar_t__ mconsole_get_request (long,struct mc_request*) ;
 int mconsole_reply (struct mc_request*,char*,int,int ) ;
 int mconsole_work ;
 int reactivate_fd (long,int ) ;
 int schedule_work (int *) ;
 int stub1 (struct mc_request*) ;

__attribute__((used)) static irqreturn_t mconsole_interrupt(int irq, void *dev_id)
{

 long fd;
 struct mconsole_entry *new;
 static struct mc_request req;

 fd = (long) dev_id;
 while (mconsole_get_request(fd, &req)) {
  if (req.cmd->context == MCONSOLE_INTR)
   (*req.cmd->handler)(&req);
  else {
   new = kmalloc(sizeof(*new), GFP_NOWAIT);
   if (new == ((void*)0))
    mconsole_reply(&req, "Out of memory", 1, 0);
   else {
    new->request = req;
    new->request.regs = get_irq_regs()->regs;
    list_add(&new->list, &mc_requests);
   }
  }
 }
 if (!list_empty(&mc_requests))
  schedule_work(&mconsole_work);
 reactivate_fd(fd, MCONSOLE_IRQ);
 return IRQ_HANDLED;
}
